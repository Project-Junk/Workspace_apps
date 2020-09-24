.class public Lcom/coloros/settings/feature/fingerprint/PasscodeSettings;
.super Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;
.source "PasscodeSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;
    }
.end annotation


# static fields
.field public static final FROM_FINGERPRINT_UI:Ljava/lang/String; = "from_fingerprint_ui"

.field private static final MY_USER_ID:I

.field protected static final RESULT_FINISHED:I = 0x1

.field public static final RESULT_TIMEOUT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PasscodeSettings"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings;->MY_USER_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .line 68
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 69
    const-class v1, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":settings:show_fragment"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public isValidFragment(Ljava/lang/String;)Z
    .locals 1

    .line 668
    const-class v0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 76
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0a03c7

    .line 78
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 81
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Activity onActivityResult requestCode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", resultCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PasscodeSettings"

    invoke-static {v2, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    .line 83
    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    .line 85
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method
