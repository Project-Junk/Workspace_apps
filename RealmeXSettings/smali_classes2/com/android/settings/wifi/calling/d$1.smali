.class final Lcom/android/settings/wifi/calling/d$1;
.super Ljava/lang/Object;
.source "WifiCallingSliceHelper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/calling/d;->a(Lcom/android/ims/e;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/android/ims/e;

.field final synthetic b:Lcom/android/settings/wifi/calling/d;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/calling/d;Lcom/android/ims/e;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/android/settings/wifi/calling/d$1;->b:Lcom/android/settings/wifi/calling/d;

    iput-object p2, p0, Lcom/android/settings/wifi/calling/d$1;->a:Lcom/android/ims/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1176
    iget-object v0, p0, Lcom/android/settings/wifi/calling/d$1;->a:Lcom/android/ims/e;

    invoke-virtual {v0}, Lcom/android/ims/e;->j()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
