.class public final synthetic Lcom/android/ims/-$$Lambda$h$1$AfjANn3gMbSm1P4lHTMYQWxWRmk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/ims/h$1;

.field private final synthetic f$1:I

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/ims/h$1;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ims/-$$Lambda$h$1$AfjANn3gMbSm1P4lHTMYQWxWRmk;->f$0:Lcom/android/ims/h$1;

    iput p2, p0, Lcom/android/ims/-$$Lambda$h$1$AfjANn3gMbSm1P4lHTMYQWxWRmk;->f$1:I

    iput p3, p0, Lcom/android/ims/-$$Lambda$h$1$AfjANn3gMbSm1P4lHTMYQWxWRmk;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/ims/-$$Lambda$h$1$AfjANn3gMbSm1P4lHTMYQWxWRmk;->f$0:Lcom/android/ims/h$1;

    iget v1, p0, Lcom/android/ims/-$$Lambda$h$1$AfjANn3gMbSm1P4lHTMYQWxWRmk;->f$1:I

    iget v2, p0, Lcom/android/ims/-$$Lambda$h$1$AfjANn3gMbSm1P4lHTMYQWxWRmk;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/android/ims/h$1;->lambda$AfjANn3gMbSm1P4lHTMYQWxWRmk(Lcom/android/ims/h$1;II)V

    return-void
.end method
