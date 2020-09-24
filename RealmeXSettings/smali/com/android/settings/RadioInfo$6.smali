.class final Lcom/android/settings/RadioInfo$6;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/RadioInfo;->a(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;IZ)V
    .locals 0

    .line 1403
    iput-object p1, p0, Lcom/android/settings/RadioInfo$6;->c:Lcom/android/settings/RadioInfo;

    iput p2, p0, Lcom/android/settings/RadioInfo$6;->a:I

    iput-boolean p3, p0, Lcom/android/settings/RadioInfo$6;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1406
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/RadioInfo$6;->c:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->w(Lcom/android/settings/RadioInfo;)Lcom/android/ims/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ims/e;->s()Lcom/android/ims/ImsConfig;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/RadioInfo$6;->a:I

    iget-boolean v2, p0, Lcom/android/settings/RadioInfo$6;->b:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/android/ims/ImsConfig;->setProvisionedValue(II)I
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "RadioInfo"

    const-string v2, "setImsConfigProvisioned() exception:"

    .line 1410
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
