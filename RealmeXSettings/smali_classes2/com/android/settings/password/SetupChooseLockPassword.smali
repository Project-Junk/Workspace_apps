.class public Lcom/android/settings/password/SetupChooseLockPassword;
.super Lcom/android/settings/password/ChooseLockPassword;
.source "SetupChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 61
    const-class v0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;

    return-object v0
.end method

.method public isValidFragment(Ljava/lang/String;)Z
    .locals 1

    .line 56
    const-class v0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 66
    invoke-super {p0, p1}, Lcom/android/settings/password/ChooseLockPassword;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a019a

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/settings/password/SetupChooseLockPassword;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p1, v0}, Landroid/view/View;->setFitsSystemWindows(Z)V

    return-void
.end method
