.class public Lcom/android/settings/password/SetupChooseLockPattern;
.super Lcom/android/settings/password/ChooseLockPattern;
.source "SetupChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPattern;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1

    .line 43
    const-class v0, Lcom/android/settings/password/SetupChooseLockPattern;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    return-object p1
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

    .line 54
    const-class v0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;

    return-object v0
.end method

.method public isValidFragment(Ljava/lang/String;)Z
    .locals 1

    .line 49
    const-class v0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 59
    invoke-super {p0, p1}, Lcom/android/settings/password/ChooseLockPattern;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f120c92

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/settings/password/SetupChooseLockPattern;->setTitle(I)V

    return-void
.end method
