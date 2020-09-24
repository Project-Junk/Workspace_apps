.class Lcolor/support/a/a$a;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:I


# instance fields
.field private b:Landroid/content/Context;

.field private c:[Ljava/lang/CharSequence;

.field private d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcolor/support/v7/a/a$j;->color_list_dialog_item:I

    sput v0, Lcolor/support/a/a$a;->a:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;[Ljava/lang/CharSequence;[I)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcolor/support/a/a$a;->b:Landroid/content/Context;

    iput-object p2, p0, Lcolor/support/a/a$a;->c:[Ljava/lang/CharSequence;

    iput-object p3, p0, Lcolor/support/a/a$a;->d:[I

    return-void
.end method

.method private a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcolor/support/a/a$a;->b:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcolor/support/a/a$a;->a:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x1020014

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    new-instance v0, Lcolor/support/a/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcolor/support/a/a$b;-><init>(Lcolor/support/a/a$1;)V

    iput-object p3, v0, Lcolor/support/a/a$b;->a:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcolor/support/a/a$b;

    :goto_0
    iget-object p3, v0, Lcolor/support/a/a$b;->a:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcolor/support/a/a$a;->a(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcolor/support/a/a$a;->d:[I

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcolor/support/a/a$a;->d:[I

    aget p1, p3, p1

    if-lez p1, :cond_1

    iget-object p3, v0, Lcolor/support/a/a$b;->a:Landroid/widget/TextView;

    iget-object p0, p0, Lcolor/support/a/a$a;->b:Landroid/content/Context;

    invoke-virtual {p3, p0, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_1

    :cond_1
    iget-object p1, v0, Lcolor/support/a/a$b;->a:Landroid/widget/TextView;

    iget-object p0, p0, Lcolor/support/a/a$a;->b:Landroid/content/Context;

    sget p3, Lcolor/support/v7/a/a$m;->DefaultDialogItemTextStyle:I

    invoke-virtual {p1, p0, p3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_2
    :goto_1
    return-object p2
.end method

.method private a(ILandroid/view/View;)V
    .locals 8

    iget-object v0, p0, Lcolor/support/a/a$a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcolor/support/v7/a/a$e;->alert_dialog_item_padding_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcolor/support/a/a$a;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcolor/support/v7/a/a$e;->alert_dialog_list_item_padding_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcolor/support/a/a$a;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcolor/support/v7/a/a$e;->alert_dialog_list_item_padding_left:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcolor/support/a/a$a;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcolor/support/v7/a/a$e;->alert_dialog_list_item_padding_bottom:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcolor/support/a/a$a;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcolor/support/v7/a/a$e;->alert_dialog_list_item_padding_right:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcolor/support/a/a$a;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcolor/support/v7/a/a$e;->alert_dialog_list_item_min_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p0}, Lcolor/support/a/a$a;->getCount()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_2

    invoke-virtual {p0}, Lcolor/support/a/a$a;->getCount()I

    move-result p0

    sub-int/2addr p0, v7

    if-ne p1, p0, :cond_0

    add-int/2addr v3, v0

    :goto_0
    invoke-virtual {p2, v2, v1, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    add-int/2addr v5, v0

    :goto_1
    invoke-virtual {p2, v5}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_2

    :cond_0
    if-nez p1, :cond_1

    add-int/2addr v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v2, v1, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcolor/support/a/a$a;->c:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcolor/support/a/a$a;->c:[Ljava/lang/CharSequence;

    aget-object p0, p0, p1

    :goto_0
    return-object p0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcolor/support/a/a$a;->c:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcolor/support/a/a$a;->c:[Ljava/lang/CharSequence;

    array-length p0, p0

    :goto_0
    return p0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcolor/support/a/a$a;->a(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcolor/support/a/a$a;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcolor/support/a/a$a;->a(ILandroid/view/View;)V

    return-object p2
.end method
