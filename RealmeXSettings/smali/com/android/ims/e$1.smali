.class final Lcom/android/ims/e$1;
.super Ljava/lang/Object;
.source "ImsManager.java"

# interfaces
.implements Lcom/android/ims/h$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ims/e;->D()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/ims/e;


# direct methods
.method constructor <init>(Lcom/android/ims/e;)V
    .locals 0

    .line 2419
    iput-object p1, p0, Lcom/android/ims/e$1;->a:Lcom/android/ims/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 2422
    iget-object v0, p0, Lcom/android/ims/e$1;->a:Lcom/android/ims/e;

    invoke-static {v0}, Lcom/android/ims/e;->a(Lcom/android/ims/e;)Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/android/ims/-$$Lambda$kbx9NoYgN0g3M5R9wJYfOMC9LnU;->INSTANCE:Lcom/android/ims/-$$Lambda$kbx9NoYgN0g3M5R9wJYfOMC9LnU;

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 2427
    iget-object v0, p0, Lcom/android/ims/e$1;->a:Lcom/android/ims/e;

    invoke-static {v0}, Lcom/android/ims/e;->a(Lcom/android/ims/e;)Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/android/ims/-$$Lambda$lmO0YelbjIwhKdQ4qubxav4tRqc;->INSTANCE:Lcom/android/ims/-$$Lambda$lmO0YelbjIwhKdQ4qubxav4tRqc;

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
