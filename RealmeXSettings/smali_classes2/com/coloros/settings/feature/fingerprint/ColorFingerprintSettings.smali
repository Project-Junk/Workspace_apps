.class public Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings;
.super Lcom/coloros/settings/feature/fingerprint/PasscodeSettings;
.source "ColorFingerprintSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintPreference;,
        Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;
    }
.end annotation


# static fields
.field private static final KEY_ANIM_STYLE:Ljava/lang/String; = "anim_styles"

.field private static final KEY_HIDE_APP_SHORTCUT:Ljava/lang/String; = "hide_app_shortcut"

.field private static final KEY_HIDE_APP_SHORTCUT_CATEGORY:Ljava/lang/String; = "optical_hide_app_shortcut_category"

.field private static final KEY_OPTICAL_FINGERPRINT_CATEGORY:Ljava/lang/String; = "optical_fingerprint_category"

.field private static final KEY_OPTICAL_FINGERPRINT_CATEGORY_LINE:Ljava/lang/String; = "optical_fingerprint_category_line"

.field public static final KEY_SHOW_FINGERPRINT:Ljava/lang/String; = "show_fingerprint_when_screen_off"

.field public static final KEY_SIDE_FINGERPRINT_CATEGORY:Ljava/lang/String; = "side_fingerprint_category"

.field private static final KEY_SIDE_FINGERPRINT_CATEGORY_LINE:Ljava/lang/String; = "side_fingerprint_category_line"

.field public static final KEY_WAY_TO_UNLOCK:Ljava/lang/String; = "way_to_unlock_when_screen_off"

.field private static final LOCKOUT_DURATION:J = 0x7530L

.field public static final POPUP_FACE_JUMP_TIP_DIALOG:Ljava/lang/String; = "popup_face_jump_tip_dialog"

.field private static final PRESS:I = 0x1

.field protected static final RESULT_SKIP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ColorFingerprintSettings"

.field private static final TOUCH:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings;-><init>()V

    return-void
.end method

.method public static getDefaultUnlockWay()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .line 144
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 145
    const-class v1, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":settings:show_fragment"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public isValidFragment(Ljava/lang/String;)Z
    .locals 1

    .line 163
    const-class v0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 157
    invoke-super {p0}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings;->onPause()V

    .line 158
    invoke-static {}, Lcom/coloros/settings/custom/a;->a()Lcom/coloros/settings/custom/a;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/coloros/settings/custom/a;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 151
    invoke-super {p0}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings;->onResume()V

    .line 152
    invoke-static {}, Lcom/coloros/settings/custom/a;->a()Lcom/coloros/settings/custom/a;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/coloros/settings/custom/a;->a(Landroid/content/Context;Z)V

    return-void
.end method
