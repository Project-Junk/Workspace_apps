.class public final synthetic Lcom/google/android/setupcompat/internal/-$$Lambda$h$dCKdWjOAAPJx1338HVEettN3osM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/google/android/setupcompat/internal/h;

.field private final synthetic f$1:I

.field private final synthetic f$2:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/setupcompat/internal/h;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/setupcompat/internal/-$$Lambda$h$dCKdWjOAAPJx1338HVEettN3osM;->f$0:Lcom/google/android/setupcompat/internal/h;

    iput p2, p0, Lcom/google/android/setupcompat/internal/-$$Lambda$h$dCKdWjOAAPJx1338HVEettN3osM;->f$1:I

    iput-object p3, p0, Lcom/google/android/setupcompat/internal/-$$Lambda$h$dCKdWjOAAPJx1338HVEettN3osM;->f$2:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/setupcompat/internal/-$$Lambda$h$dCKdWjOAAPJx1338HVEettN3osM;->f$0:Lcom/google/android/setupcompat/internal/h;

    iget v1, p0, Lcom/google/android/setupcompat/internal/-$$Lambda$h$dCKdWjOAAPJx1338HVEettN3osM;->f$1:I

    iget-object v2, p0, Lcom/google/android/setupcompat/internal/-$$Lambda$h$dCKdWjOAAPJx1338HVEettN3osM;->f$2:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/google/android/setupcompat/internal/h;->lambda$dCKdWjOAAPJx1338HVEettN3osM(Lcom/google/android/setupcompat/internal/h;ILandroid/os/Bundle;)V

    return-void
.end method
