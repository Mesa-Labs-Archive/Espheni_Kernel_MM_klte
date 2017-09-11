#!/system/bin/sh
# Copyright (c) 2013, The Linux Foundation. All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#     * Redistributions of source code must retain the above copyright
#       notice, this list of conditions and the following disclaimer.
#     * Redistributions in binary form must reproduce the above copyright
#       notice, this list of conditions and the following disclaimer in the
#       documentation and/or other materials provided with the distribution.
#     * Neither the name of Linux Foundation nor
#       the names of its contributors may be used to endorse or promote
#       products derived from this software without specific prior written
#       permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NON-INFRINGEMENT ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR
# CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
# EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
# PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
# OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
# WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
# OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
# ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

if [ -e /data/espheni_kernel.log ]; then
    rm /data/espheni_kernel.log
fi

echo "-----------------------------------" >> /data/espheni_kernel.log
echo "EspheniKernel script is working." >> /data/espheni_kernel.log
echo " " >> /data/espheni_kernel.log
echo "Phone just booted..." >> /data/espheni_kernel.log
echo " " >> /data/espheni_kernel.log

# Set Knox flag to 0x0
/sbin/resetprop -n ro.boot.warranty_bit "0"
/sbin/resetprop -n ro.warranty_bit "0"

echo "-Samsung Flags Faker executed." >> /data/espheni_kernel.log

# Deepsleep
for i in `ls /sys/class/scsi_disk/`; do
  cat /sys/class/scsi_disk/$i/write_protect 2>/dev/null | grep 1 >/dev/null
  if [ $? -eq 0 ]; then
    echo 'temporary none' > /sys/class/scsi_disk/$i/cache_type
  fi
done

echo "-Deepsleep fix executed." >> /data/espheni_kernel.log
