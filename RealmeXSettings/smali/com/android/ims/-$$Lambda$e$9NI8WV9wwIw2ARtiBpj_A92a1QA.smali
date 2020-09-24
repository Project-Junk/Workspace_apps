.class public final synthetic Lcom/android/ims/-$$Lambda$e$9NI8WV9wwIw2ARtiBpj_A92a1QA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/ims/e;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/ims/e;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ims/-$$Lambda$e$9NI8WV9wwIw2ARtiBpj_A92a1QA;->f$0:Lcom/android/ims/e;

    iput p2, p0, Lcom/android/ims/-$$Lambda$e$9NI8WV9wwIw2ARtiBpj_A92a1QA;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/ims/-$$Lambda$e$9NI8WV9wwIw2ARtiBpj_A92a1QA;->f$0:Lcom/android/ims/e;

    iget v1, p0, Lcom/android/ims/-$$Lambda$e$9NI8WV9wwIw2ARtiBpj_A92a1QA;->f$1:I

    invoke-static {v0, v1}, Lcom/android/ims/e;->lambda$9NI8WV9wwIw2ARtiBpj_A92a1QA(Lcom/android/ims/e;I)V

    return-void
.end method
