.class final Landroidx/remotecallback/RemoteCallback$1;
.super Landroidx/remotecallback/RemoteCallback;
.source "RemoteCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/remotecallback/RemoteCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 151
    invoke-direct/range {p0 .. p5}, Landroidx/remotecallback/RemoteCallback;-><init>(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final getArgumentBundle()Landroid/os/Bundle;
    .locals 2

    .line 159
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "RemoteCallback.LOCAL cannot be used"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getMethodName()Ljava/lang/String;
    .locals 2

    .line 164
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "RemoteCallback.LOCAL cannot be used"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getReceiverClass()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 170
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "RemoteCallback.LOCAL cannot be used"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getType()I
    .locals 2

    .line 154
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "RemoteCallback.LOCAL cannot be used"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toPendingIntent()Landroid/app/PendingIntent;
    .locals 2

    .line 175
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "RemoteCallback.LOCAL cannot be used"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method