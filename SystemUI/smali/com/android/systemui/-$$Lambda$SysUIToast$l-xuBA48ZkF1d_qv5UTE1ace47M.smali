.class public final synthetic Lcom/android/systemui/-$$Lambda$SysUIToast$l-xuBA48ZkF1d_qv5UTE1ace47M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/content/Context;

.field private final synthetic f$1:Ljava/lang/CharSequence;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/-$$Lambda$SysUIToast$l-xuBA48ZkF1d_qv5UTE1ace47M;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/-$$Lambda$SysUIToast$l-xuBA48ZkF1d_qv5UTE1ace47M;->f$1:Ljava/lang/CharSequence;

    iput p3, p0, Lcom/android/systemui/-$$Lambda$SysUIToast$l-xuBA48ZkF1d_qv5UTE1ace47M;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/-$$Lambda$SysUIToast$l-xuBA48ZkF1d_qv5UTE1ace47M;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/-$$Lambda$SysUIToast$l-xuBA48ZkF1d_qv5UTE1ace47M;->f$1:Ljava/lang/CharSequence;

    iget p0, p0, Lcom/android/systemui/-$$Lambda$SysUIToast$l-xuBA48ZkF1d_qv5UTE1ace47M;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/android/systemui/SysUIToast;->lambda$showToastInMainThread$0(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method
