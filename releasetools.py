import common
import edify_generator

def WritePolicyConfig(info):
  try:
    file_contexts = info.input_zip.read("META/file_contexts")
    common.ZipWriteStr(info.output_zip, "file_contexts", file_contexts)
  except KeyError:
    print "warning: file_context missing from target;"

def InstallSuperSU(info):
    supersu = info.input_zip.read("META/UPDATE-SuperSU.zip")
    common.ZipWriteStr(info.output_zip, "su/UPDATE-SuperSU.zip", supersu)

def FlashSUperSU(info):
    info.script.AppendExtra(('ui_print("flash Supersu...");'))
    info.script.AppendExtra(('package_extract_dir("su", "/tmp/supersu");'))
    info.script.AppendExtra(('run_program("/sbin/busybox", "unzip", "/tmp/supersu/UPDATE-SuperSU.zip", "META-INF/com/google/android/*", "-d", "/tmp/supersu");'))
    info.script.AppendExtra(('run_program("/sbin/busybox", "sh", "/tmp/supersu/META-INF/com/google/android/update-binary", "dummy", "1", "/tmp/supersu/UPDATE-SuperSU.zip");'))

def InstallRadio(img_name, img_file, partition, info):
    common.ZipWriteStr(info.output_zip, img_name, img_file)
    info.script.AppendExtra(('package_extract_file("' + img_name + '", "' + partition + '");'))

def InstallAboot(info):
    img_file = info.input_zip.read("BOOTABLE_IMAGES/emmc_appsboot.mbn")
    InstallRadio("emmc_appsboot.mbn", img_file, "/dev/block/platform/msm_sdcc.1/by-name/aboot", info)

def InstallLogo(info):
    img_file = info.input_zip.read("BOOTABLE_IMAGES/logo.bin")
    InstallRadio("logo.bin", img_file, "/dev/block/platform/msm_sdcc.1/by-name/LOGO", info)

def InstallModem(info):
    img_file = info.input_zip.read("BOOTABLE_IMAGES/NON-HLOS.bin")
    InstallRadio("NON-HLOS.bin", img_file, "/dev/block/platform/msm_sdcc.1/by-name/modem", info)

def InstallRpm(info):
    img_file = info.input_zip.read("BOOTABLE_IMAGES/rpm.mbn")
    InstallRadio("rpm.mbn", img_file, "/dev/block/platform/msm_sdcc.1/by-name/rpm", info)

def InstallSbl1(info):
    img_file = info.input_zip.read("BOOTABLE_IMAGES/sbl1.mbn")
    InstallRadio("sbl1.mbn", img_file, "/dev/block/platform/msm_sdcc.1/by-name/sbl1", info)

def InstallSdi(info):
    img_file = info.input_zip.read("BOOTABLE_IMAGES/sdi.mbn")
    InstallRadio("sdi.mbn", img_file, "/dev/block/platform/msm_sdcc.1/by-name/sdi", info)


def InstallOppostanvbk(info):
    img_file = info.input_zip.read("BOOTABLE_IMAGES/static_nvbk.bin")
    InstallRadio("static_nvbk.bin", img_file, "/dev/block/platform/msm_sdcc.1/by-name/oppostanvbk", info)

def InstallTz(info):
    img_file = info.input_zip.read("BOOTABLE_IMAGES/tz.mbn")
    InstallRadio("tz.mbn", img_file, "/dev/block/platform/msm_sdcc.1/by-name/tz", info)

def FullOTA_InstallEnd(info):
    WritePolicyConfig(info)
    InstallSuperSU(info)
    FlashSUperSU(info)
    info.script.AppendExtra(('ui_print("Writing radio image...");'))
    InstallAboot(info)
    InstallLogo(info)
    InstallModem(info)
    InstallRpm(info)
    InstallSbl1(info)
    InstallSdi(info)
    InstallOppostanvbk(info)
    InstallTz(info)
