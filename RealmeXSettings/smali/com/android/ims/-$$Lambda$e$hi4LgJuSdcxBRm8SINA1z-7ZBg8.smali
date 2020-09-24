.class public final synthetic Lcom/android/ims/-$$Lambda$e$hi4LgJuSdcxBRm8SINA1z-7ZBg8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/ims/e;

.field private final synthetic f$1:Z

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/ims/e;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ims/-$$Lambda$e$hi4LgJuSdcxBRm8SINA1z-7ZBg8;->f$0:Lcom/android/ims/e;

    iput-boolean p2, p0, Lcom/android/ims/-$$Lambda$e$hi4LgJuSdcxBRm8SINA1z-7ZBg8;->f$1:Z

    iput p3, p0, Lcom/android/ims/-$$Lambda$e$hi4LgJuSdcxBRm8SINA1z-7ZBg8;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/ims/-$$Lambda$e$hi4LgJuSdcxBRm8SINA1z-7ZBg8;->f$0:Lcom/android/ims/e;

    iget-boolean v1, p0, Lcom/android/ims/-$$Lambda$e$hi4LgJuSdcxBRm8SINA1z-7ZBg8;->f$1:Z

    iget v2, p0, Lcom/android/ims/-$$Lambda$e$hi4LgJuSdcxBRm8SINA1z-7ZBg8;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/android/ims/e;->lambda$hi4LgJuSdcxBRm8SINA1z-7ZBg8(Lcom/android/ims/e;ZI)V

    return-void
.end method
