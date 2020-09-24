.class public final Lcom/android/ims/b$a;
.super Lcom/android/ims/internal/IImsEcbmListener$Stub;
.source "ImsEcbm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/ims/b;

.field private b:Lcom/android/ims/c;


# direct methods
.method public constructor <init>(Lcom/android/ims/b;Lcom/android/ims/c;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/android/ims/b$a;->a:Lcom/android/ims/b;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsEcbmListener$Stub;-><init>()V

    .line 86
    iput-object p2, p0, Lcom/android/ims/b$a;->b:Lcom/android/ims/c;

    return-void
.end method


# virtual methods
.method public final enteredECBM()V
    .locals 2

    const-string v0, "ImsEcbm"

    const-string v1, "enteredECBM ::"

    .line 91
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/android/ims/b$a;->b:Lcom/android/ims/c;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Lcom/android/ims/c;->onECBMEntered()V

    :cond_0
    return-void
.end method

.method public final exitedECBM()V
    .locals 2

    const-string v0, "ImsEcbm"

    const-string v1, "exitedECBM ::"

    .line 100
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/android/ims/b$a;->b:Lcom/android/ims/c;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Lcom/android/ims/c;->onECBMExited()V

    :cond_0
    return-void
.end method
