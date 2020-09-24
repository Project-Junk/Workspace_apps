.class final Lcom/coloros/settings/utils/recyclerview/a$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "WrapperUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/utils/recyclerview/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/utils/recyclerview/a$a;

.field final synthetic b:Landroidx/recyclerview/widget/GridLayoutManager;

.field final synthetic c:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;


# direct methods
.method constructor <init>(Lcom/coloros/settings/utils/recyclerview/a$a;Landroidx/recyclerview/widget/GridLayoutManager;Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/coloros/settings/utils/recyclerview/a$1;->a:Lcom/coloros/settings/utils/recyclerview/a$a;

    iput-object p2, p0, Lcom/coloros/settings/utils/recyclerview/a$1;->b:Landroidx/recyclerview/widget/GridLayoutManager;

    iput-object p3, p0, Lcom/coloros/settings/utils/recyclerview/a$1;->c:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSpanSize(I)I
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/coloros/settings/utils/recyclerview/a$1;->a:Lcom/coloros/settings/utils/recyclerview/a$a;

    iget-object v1, p0, Lcom/coloros/settings/utils/recyclerview/a$1;->b:Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v2, p0, Lcom/coloros/settings/utils/recyclerview/a$1;->c:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-interface {v0, v1, v2, p1}, Lcom/coloros/settings/utils/recyclerview/a$a;->a(Landroidx/recyclerview/widget/GridLayoutManager;Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;I)I

    move-result p1

    return p1
.end method
