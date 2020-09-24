.class public Lcom/coloros/settings/utils/bg;
.super Ljava/lang/Object;
.source "SwitchBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/utils/bg$b;,
        Lcom/coloros/settings/utils/bg$c;,
        Lcom/coloros/settings/utils/bg$a;,
        Lcom/coloros/settings/utils/bg$d;
    }
.end annotation


# instance fields
.field protected a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/coloros/settings/utils/bg$a;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/coloros/settings/utils/bg$c;

.field private c:Lcom/coloros/settings/utils/bg$b;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/coloros/settings/utils/bg;->a:Landroid/util/SparseArray;

    return-void
.end method

.method private a(I)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/coloros/settings/utils/bg;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/utils/bg$a;

    if-eqz p1, :cond_0

    .line 58
    invoke-interface {p1}, Lcom/coloros/settings/utils/bg$a;->run()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(ILcom/coloros/settings/utils/bg$a;)Lcom/coloros/settings/utils/bg;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/coloros/settings/utils/bg;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public final a()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/coloros/settings/utils/bg;->b:Lcom/coloros/settings/utils/bg$c;

    if-eqz v0, :cond_1

    .line 64
    invoke-interface {v0}, Lcom/coloros/settings/utils/bg$c;->pred()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xff

    goto :goto_0

    :cond_0
    const/16 v0, 0x7f

    .line 65
    :goto_0
    invoke-direct {p0, v0}, Lcom/coloros/settings/utils/bg;->a(I)V

    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/utils/bg;->c:Lcom/coloros/settings/utils/bg$b;

    if-eqz v0, :cond_2

    .line 67
    invoke-interface {v0}, Lcom/coloros/settings/utils/bg$b;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/coloros/settings/utils/bg;->a(I)V

    :cond_2
    return-void
.end method
