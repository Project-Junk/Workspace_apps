.class public final Lcom/android/ims/f$a;
.super Lcom/android/ims/internal/IImsExternalCallStateListener$Stub;
.source "ImsMultiEndpoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/ims/f;

.field private b:Lcom/android/ims/d;


# direct methods
.method public constructor <init>(Lcom/android/ims/f;Lcom/android/ims/d;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/android/ims/f$a;->a:Lcom/android/ims/f;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsExternalCallStateListener$Stub;-><init>()V

    .line 43
    iput-object p2, p0, Lcom/android/ims/f$a;->b:Lcom/android/ims/d;

    return-void
.end method


# virtual methods
.method public final onImsExternalCallStateUpdate(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/ImsExternalCallState;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ImsMultiEndpoint"

    const-string v1, "onImsExternalCallStateUpdate"

    .line 54
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lcom/android/ims/f$a;->b:Lcom/android/ims/d;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0, p1}, Lcom/android/ims/d;->onImsExternalCallStateUpdate(Ljava/util/List;)V

    :cond_0
    return-void
.end method
