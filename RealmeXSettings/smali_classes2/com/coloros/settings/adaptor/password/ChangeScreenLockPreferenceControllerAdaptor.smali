.class public Lcom/coloros/settings/adaptor/password/ChangeScreenLockPreferenceControllerAdaptor;
.super Lcom/color/injector/adaptor/ClassAdaptor;
.source "ChangeScreenLockPreferenceControllerAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/color/injector/adaptor/ClassAdaptor<",
        "Lcom/android/settings/security/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/color/injector/adaptor/ClassAdaptor;-><init>()V

    return-void
.end method


# virtual methods
.method public getDetinationClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ChangeScreenLockPreferenceControllerAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 28
    :cond_0
    const-class p1, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
