.class final Lcom/android/settings/network/telephony/c$1;
.super Ljava/lang/Object;
.source "Enhanced4gLteSliceHelper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/c;
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

.field final synthetic b:Lcom/android/settings/network/telephony/c;


# direct methods
.method constructor <init>(Lcom/android/settings/network/telephony/c;Lcom/android/ims/e;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/android/settings/network/telephony/c$1;->b:Lcom/android/settings/network/telephony/c;

    iput-object p2, p0, Lcom/android/settings/network/telephony/c$1;->a:Lcom/android/ims/e;

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

    .line 1153
    iget-object v0, p0, Lcom/android/settings/network/telephony/c$1;->a:Lcom/android/ims/e;

    invoke-virtual {v0}, Lcom/android/ims/e;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
