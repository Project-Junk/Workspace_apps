.class public final synthetic Lcom/android/ims/-$$Lambda$JKCTvVCB_1XFiWlfEDitaiNcs5Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/ims/h$a;


# direct methods
.method public synthetic constructor <init>(Lcom/android/ims/h$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ims/-$$Lambda$JKCTvVCB_1XFiWlfEDitaiNcs5Q;->f$0:Lcom/android/ims/h$a;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/ims/-$$Lambda$JKCTvVCB_1XFiWlfEDitaiNcs5Q;->f$0:Lcom/android/ims/h$a;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/ims/h$a;->a(I)V

    return-void
.end method
