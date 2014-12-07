.class public Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;
.super Ljava/lang/Object;
.source "SettingsSearchUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/settingssearch/SettingsSearchUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsSearchFilterMenu"
.end annotation


# static fields
.field private static final KNOX_MODE_REMOVED_MENU:[Ljava/lang/String;

.field private static final SUB_USER_REMOVED_MENU:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRemovekeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v3, 0x7f0b06ee

    const/16 v0, 0x3b

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f0b06a1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f0b06a5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f0b06a2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f0b06a6

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const v2, 0x7f0b06ac

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const v2, 0x7f0b0704

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x7f0b0705

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x7f0b0706

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x7f0b0707

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x7f0b0708

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x7f0b070a

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x7f0b06cb

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const v2, 0x7f0b06de

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const v2, 0x7f0b06e4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const v2, 0x7f0b06e9

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const v2, 0x7f0b06cd

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const v2, 0x7f0b06e1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const v2, 0x7f0b069a

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const v2, 0x7f0b069b

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const v2, 0x7f0b0715

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const v2, 0x7f0b06e5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const v2, 0x7f0b06ed

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x7f0b071c

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const v2, 0x7f0b071d

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const v2, 0x7f0b071e

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const v2, 0x7f0b071f

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x7f0b071a

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const v2, 0x7f0b0720

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const v2, 0x7f0b0722

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "ringtone"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "phone_vibration"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "vibrate_when_ringing"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "dtmf_tone"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "sound_applications"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "sound_call"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "sound_message"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "sound_email"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "sound_splanner"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "font_menu"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "unlock_set_motion"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "unlock_set_biometric_weak"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "unlock_set_biometric_weak_with_voice"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "unlock_set_signature"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "unlock_set_pattern"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "unlock_set_pin"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "unlock_set_password"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "unlock_set_smart"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "unlock_set_cac_pin"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "unlock_set_off"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "owner_info_settings"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "unlock_effect"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "additional_information"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "disable_incoming_calls"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "allowed_contacts"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "allowed_list"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "pick_up_to_call_out"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "pick_up"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "software_update_settings"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->SUB_USER_REMOVED_MENU:[Ljava/lang/String;

    const/16 v0, 0x47

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f0b06a1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f0b06a5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f0b06a0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f0b06a6

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const v2, 0x7f0b06ac

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const v2, 0x7f0b06ae

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x7f0b06b1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x7f0b06b3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x7f0b0704

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x7f0b0705

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x7f0b0706

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x7f0b0707

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const v2, 0x7f0b0708

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const v2, 0x7f0b06b8

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const v2, 0x7f0b06cb

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const v2, 0x7f0b06de

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const v2, 0x7f0b06e4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const v2, 0x7f0b06e9

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const v2, 0x7f0b06cd

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const v2, 0x7f0b069a

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const v2, 0x7f0b069b

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const v2, 0x7f0b06e5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x7f0b06bf

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const v2, 0x7f0b071c

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const v2, 0x7f0b071d

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const v2, 0x7f0b071e

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x7f0b071f

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const v2, 0x7f0b071a

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const v2, 0x7f0b0720

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const v2, 0x7f0b0722

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const v2, 0x7f0b06c3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const v2, 0x7f0b06c0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const v2, 0x7f0b06c7

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x22

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const v2, 0x7f0b06f1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "ringtone"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "phone_vibration"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "vibrate_when_ringing"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "dtmf_tone"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "sound_applications"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "sound_call"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "sound_message"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "sound_email"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "sound_splanner"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "audio_output"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "font_menu"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "screensaver"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "lockscreen_wallpaper"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "both_wallpaper"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "unlock_set_motion"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "unlock_set_biometric_weak"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "unlock_set_biometric_weak_with_voice"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "unlock_set_signature"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "unlock_set_pattern"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "unlock_set_pin"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "unlock_set_password"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "unlock_set_smart"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "unlock_set_cac_pin"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "unlock_set_off"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "owner_info_settings"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "unlock_effect"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "additional_information"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "disable_incoming_calls"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "allowed_contacts"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "allowed_list"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "pick_up_to_call_out"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "pick_up"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "software_update_settings"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "security_policy_updates"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "security_reports"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->KNOX_MODE_REMOVED_MENU:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mRemovekeyList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mRemovekeyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->SUB_USER_REMOVED_MENU:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->KNOX_MODE_REMOVED_MENU:[Ljava/lang/String;

    return-object v0
.end method

.method private addRemovePreferenceKey(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mRemovekeyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getDynamiRemoveResult(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mRemovekeyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public initDynamicPreferenceRemovekey()V
    .locals 14

    const/4 v10, 0x0

    const/4 v9, 0x1

    new-instance v6, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v11, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-direct {v6, v11}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v11

    if-eqz v11, :cond_1f

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v11

    if-nez v11, :cond_14

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v11

    if-eqz v11, :cond_11

    const-string v11, "multiple_lock_screenswitch"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "lock_screen_clock_settings"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "lock_screen_shortcut_menu"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "lock_screen_myprofile_settings"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "owner_info_settings"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "biometric_weak_improve_matching"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "visiblepattern"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "unlock_effect"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "ink_effect"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "lock_screen_wakeup_settings"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "lock_after_timeout"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "power_button_instantly_locks"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "quick_note"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "help_text"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "visiblesignature"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "signature_verification_level"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "lock_screen_magazine_card"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "additional_information"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "lock_info_weather"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "upcoming_event"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "steps"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "dualclock_settings"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "homecity_timezone"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "vibration_feedback"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "lock_screen_camera_shortcut"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    :cond_0
    :goto_0
    :sswitch_0
    iget-object v11, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "easy_mode_switch"

    invoke-static {v11, v12, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_1

    const v11, 0x7f0b06dc

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const v11, 0x7f0b0720

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    :cond_1
    const/4 v3, 0x0

    iget-object v11, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    if-eqz v7, :cond_3

    :try_start_0
    const-string v11, "com.vlingo.midas"

    const/4 v12, 0x1

    invoke-virtual {v7, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    const-string v11, "com.vlingo.midas"

    invoke-virtual {v7, v11}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x2

    if-eq v11, v12, :cond_2

    const-string v11, "com.vlingo.midas"

    invoke-virtual {v7, v11}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_3

    :cond_2
    const/4 v3, 0x1

    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    const-string v11, "SettingSearch/SettingsSearchUtils"

    const-string v12, "svoice_settings is disabled"

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const v11, 0x7f0b0722

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->DisableCloud()Z

    move-result v11

    if-nez v11, :cond_5

    :try_start_1
    iget-object v11, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string v12, "com.sec.android.cloudagent"

    const/4 v13, 0x5

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    :goto_2
    iget-object v11, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "wmanager_connected"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_24

    :goto_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v11

    if-eq v11, v9, :cond_6

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v11

    if-nez v11, :cond_7

    :cond_6
    const-string v11, "sim_lock_settings"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "sim_toggle"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "sim_pin"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    :cond_7
    iget-object v11, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "default_input_method"

    invoke-static {v11, v12}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v11, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    const-string v11, "sip_feedback_sound"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "sip_feedback_vibration"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    :cond_8
    iget-object v11, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "access_control_use"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_9

    const-string v11, "direct_accesscontrol"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    :cond_9
    const-string v11, "captioning_typeface"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "captioning_foreground_color"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "captioning_edge_type"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "captioning_edge_color"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "captioning_background_color"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "captioning_background_opacity"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const/4 v5, 0x0

    iget-object v11, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v11

    if-eqz v11, :cond_a

    const/4 v5, 0x1

    :cond_a
    if-eqz v5, :cond_b

    const-string v11, "sound_mode"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "ringtone"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "phone_vibration"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "notification_sound"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "vibrate_when_ringing"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "dtmf_tone"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "sound_effects"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "lock_sounds"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "gps_notification_sounds"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "haptic_feedback"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "audio_output"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "musicfx"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "my_sound"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "sound_call"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "sound_message"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "sound_email"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "sound_splanner"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "sip_feedback_sound"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "sip_feedback_vibration"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    :cond_b
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    if-eqz v11, :cond_25

    move v4, v9

    :goto_4
    if-nez v4, :cond_c

    iget-object v11, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_26

    :cond_c
    const-string v9, "roaming_settings"

    invoke-direct {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    :cond_d
    :goto_5
    if-eqz v4, :cond_e

    const-string v9, "lockscreen_wallpaper"

    invoke-direct {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v9, "both_wallpaper"

    invoke-direct {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    :cond_e
    iget-object v9, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    # invokes: Lcom/android/settings/settingssearch/SettingsSearchUtils;->samsungAccountExists(Landroid/content/Context;)Z
    invoke-static {v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->access$300(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_f

    const-string v9, "pref_add_samsung_account"

    invoke-direct {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    :cond_f
    # invokes: Lcom/android/settings/settingssearch/SettingsSearchUtils;->isCoverVerified()Z
    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->access$400()Z

    move-result v9

    if-nez v9, :cond_10

    const-string v9, "sview_color"

    invoke-direct {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v9, "select_info"

    invoke-direct {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v9, "weather"

    invoke-direct {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v9, "walking_mate"

    invoke-direct {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v9, "automatic_unlock"

    invoke-direct {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v9, "show_in_call_screen"

    invoke-direct {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    :cond_10
    return-void

    :cond_11
    const-string v11, "lock_after_timeout"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "visiblepattern"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "power_button_instantly_locks"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "biometric_weak_improve_matching"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "visiblesignature"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "signature_verification_level"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    if-eqz v11, :cond_12

    const-string v11, "unlock_effect"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "ink_effect"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    :cond_12
    const/4 v11, 0x0

    invoke-static {v11}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_13

    const-string v11, "clock_weather"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    :cond_13
    const-string v11, "vibration_feedback"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_14
    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v11

    if-eqz v11, :cond_16

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v11

    if-eqz v11, :cond_16

    const-string v11, "unlock_effect"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "ink_effect"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "lock_screen_wakeup_settings"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "multiple_lock_screenswitch"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "lock_screen_shortcut_menu"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "visiblepattern"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "help_text"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "visiblesignature"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "signature_verification_level"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "additional_information"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "lock_info_weather"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "upcoming_event"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "steps"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "vibration_feedback"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v11

    if-nez v11, :cond_15

    invoke-static {}, Lcom/android/settings/Utils;->hasDAForLockscreenShortcut()Z

    move-result v11

    if-eqz v11, :cond_0

    :cond_15
    const-string v11, "lock_screen_camera_shortcut"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_16
    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->usingSignatureUnlock()Z

    move-result v11

    if-eqz v11, :cond_18

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isSignatureLockInstalled()Z

    move-result v11

    if-eqz v11, :cond_18

    const-string v11, "unlock_effect"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "ink_effect"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "biometric_weak_improve_matching"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "lock_screen_wakeup_settings"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "multiple_lock_screenswitch"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "lock_screen_shortcut_menu"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "visiblepattern"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "additional_information"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "lock_info_weather"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "upcoming_event"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "steps"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "vibration_feedback"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v11

    if-nez v11, :cond_17

    invoke-static {}, Lcom/android/settings/Utils;->hasDAForLockscreenShortcut()Z

    move-result v11

    if-eqz v11, :cond_0

    :cond_17
    const-string v11, "lock_screen_camera_shortcut"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_18
    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_1
    const-string v11, "biometric_weak_improve_matching"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    if-eqz v11, :cond_19

    const-string v11, "unlock_effect"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    :cond_19
    const-string v11, "ink_effect"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "lock_screen_wakeup_settings"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "multiple_lock_screenswitch"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "lock_screen_shortcut_menu"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "help_text"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "visiblesignature"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "signature_verification_level"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "clock_weather"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "additional_information"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "lock_info_weather"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "upcoming_event"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "steps"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v11

    if-nez v11, :cond_1a

    invoke-static {}, Lcom/android/settings/Utils;->hasDAForLockscreenShortcut()Z

    move-result v11

    if-eqz v11, :cond_0

    :cond_1a
    const-string v11, "lock_screen_camera_shortcut"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_2
    const-string v11, "biometric_weak_improve_matching"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "unlock_effect"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "ink_effect"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "lock_screen_wakeup_settings"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "multiple_lock_screenswitch"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "lock_screen_shortcut_menu"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "visiblepattern"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "help_text"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "visiblesignature"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "signature_verification_level"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "additional_information"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "lock_info_weather"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "upcoming_event"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "steps"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "vibration_feedback"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v11

    if-nez v11, :cond_1b

    invoke-static {}, Lcom/android/settings/Utils;->hasDAForLockscreenShortcut()Z

    move-result v11

    if-eqz v11, :cond_0

    :cond_1b
    const-string v11, "lock_screen_camera_shortcut"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_3
    const-string v11, "biometric_weak_improve_matching"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "unlock_effect"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "ink_effect"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "lock_screen_wakeup_settings"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "multiple_lock_screenswitch"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "lock_screen_shortcut_menu"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "visiblepattern"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "help_text"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "visiblesignature"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "signature_verification_level"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "clock_weather"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "vibration_feedback"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v11

    if-nez v11, :cond_1c

    invoke-static {}, Lcom/android/settings/Utils;->hasDAForLockscreenShortcut()Z

    move-result v11

    if-eqz v11, :cond_0

    :cond_1c
    const-string v11, "lock_screen_camera_shortcut"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_4
    const-string v11, "biometric_weak_improve_matching"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "unlock_effect"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "ink_effect"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "lock_screen_wakeup_settings"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "multiple_lock_screenswitch"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "lock_screen_shortcut_menu"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "visiblepattern"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "help_text"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "visiblesignature"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "signature_verification_level"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "vibration_feedback"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v11

    if-nez v11, :cond_1d

    invoke-static {}, Lcom/android/settings/Utils;->hasDAForLockscreenShortcut()Z

    move-result v11

    if-eqz v11, :cond_0

    :cond_1d
    const-string v11, "lock_screen_camera_shortcut"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_5
    const-string v11, "biometric_weak_improve_matching"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "unlock_effect"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "ink_effect"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "lock_screen_wakeup_settings"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "multiple_lock_screenswitch"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "lock_screen_shortcut_menu"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "visiblepattern"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "help_text"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "visiblesignature"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "signature_verification_level"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "clock_weather"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "vibration_feedback"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v11

    if-nez v11, :cond_1e

    invoke-static {}, Lcom/android/settings/Utils;->hasDAForLockscreenShortcut()Z

    move-result v11

    if-eqz v11, :cond_0

    :cond_1e
    const-string v11, "lock_screen_camera_shortcut"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1f
    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v11

    if-nez v11, :cond_21

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v11

    if-eqz v11, :cond_20

    const-string v11, "lock_screen_widget_options"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "lock_screen_shortcut_menu"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "safetyzone_settings"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "unlock_effect"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "help_text"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "say_your_wakeup"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "set_wakeup_command"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "multiple_lock_screen"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "biometric_weak_improve_matching"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "biometric_weak_liveliness"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "lock_after_timeout"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "power_button_instantly_locks"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "visiblepattern"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "visiblesignature"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "signature_verification_level"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "additional_information"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "lock_info_weather"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "upcoming_event"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "steps"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_20
    const-string v11, "biometric_weak_improve_matching"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "biometric_weak_liveliness"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "lock_after_timeout"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "power_button_instantly_locks"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "visiblepattern"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "visiblesignature"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "signature_verification_level"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_21
    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v11

    if-eqz v11, :cond_23

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v11

    if-eqz v11, :cond_23

    const-string v11, "lock_screen_shortcut_menu"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "unlock_effect"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "help_text"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "say_your_wakeup"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "set_wakeup_command"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "signature_verification_level"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v11

    const/high16 v12, 0x20000

    if-ne v11, v12, :cond_22

    const-string v11, "visiblepattern"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    :cond_22
    const-string v11, "visiblesignature"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_23
    const-string v11, "lock_screen_shortcut_menu"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "unlock_effect"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "help_text"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "say_your_wakeup"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "set_wakeup_command"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "biometric_weak_improve_matching"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "biometric_weak_liveliness"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "visiblesignature"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "signature_verification_level"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "additional_information"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "lock_info_weather"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "upcoming_event"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v11, "steps"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v11

    sparse-switch v11, :sswitch_data_1

    goto/16 :goto_0

    :sswitch_6
    const-string v11, "visiblepattern"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_7
    const-string v11, "visiblepattern"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v11, "SettingSearch/SettingsSearchUtils"

    const-string v12, "Cloud package not found"

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v11, 0x7f0b069a

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_24
    const-string v11, "unlock_set_smart"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_25
    move v4, v10

    goto/16 :goto_4

    :cond_26
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Common_UseChameleon"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    const-string v11, "persist.sys.roaming_menu"

    invoke-static {v11, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-eq v10, v9, :cond_d

    const-string v9, "roaming_settings"

    invoke-direct {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_5

    :catch_1
    move-exception v11

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_1
        0x20000 -> :sswitch_3
        0x40000 -> :sswitch_5
        0x50000 -> :sswitch_5
        0x60000 -> :sswitch_5
        0x61000 -> :sswitch_2
        0x90000 -> :sswitch_4
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_6
        0x40000 -> :sswitch_7
        0x50000 -> :sswitch_7
        0x60000 -> :sswitch_7
    .end sparse-switch
.end method
