.class public Lcolor/support/v7/app/c;
.super Landroid/widget/BaseAdapter;
.source "SummaryAdapter.java"


# static fields
.field private static final a:I


# instance fields
.field private b:Z

.field private c:Z

.field private d:Landroid/content/Context;

.field private e:[Ljava/lang/CharSequence;

.field private f:[Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    sget v0, Lcolor/support/v7/appcompat/R$layout;->color_alert_dialog_summary_item:I

    sput v0, Lcolor/support/v7/app/c;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    iput-boolean p2, p0, Lcolor/support/v7/app/c;->b:Z

    .line 23
    iput-boolean p3, p0, Lcolor/support/v7/app/c;->c:Z

    .line 24
    iput-object p1, p0, Lcolor/support/v7/app/c;->d:Landroid/content/Context;

    .line 25
    iput-object p4, p0, Lcolor/support/v7/app/c;->e:[Ljava/lang/CharSequence;

    .line 26
    iput-object p5, p0, Lcolor/support/v7/app/c;->f:[Ljava/lang/CharSequence;

    return-void
.end method

.method private a(ILandroid/view/View;)V
    .locals 7

    .line 48
    iget-object v0, p0, Lcolor/support/v7/app/c;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$dimen;->alert_dialog_item_padding_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 49
    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 50
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 51
    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 52
    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    .line 53
    invoke-virtual {p0}, Lcolor/support/v7/app/c;->getCount()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_2

    .line 54
    invoke-virtual {p0}, Lcolor/support/v7/app/c;->getCount()I

    move-result v5

    sub-int/2addr v5, v6

    if-ne p1, v5, :cond_0

    add-int/2addr v3, v0

    .line 55
    invoke-virtual {p2, v2, v1, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 56
    invoke-virtual {p2}, Landroid/view/View;->getMinimumHeight()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p2, p1}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_0

    .line 57
    :cond_0
    iget-boolean v5, p0, Lcolor/support/v7/app/c;->b:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcolor/support/v7/app/c;->c:Z

    if-nez v5, :cond_2

    if-nez p1, :cond_1

    add-int/2addr v1, v0

    .line 59
    invoke-virtual {p2, v2, v1, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 60
    invoke-virtual {p2}, Landroid/view/View;->getMinimumHeight()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p2, p1}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p2, v2, v1, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/CharSequence;
    .locals 1

    .line 75
    iget-object v0, p0, Lcolor/support/v7/app/c;->e:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    aget-object p1, v0, p1

    :goto_0
    return-object p1
.end method

.method public b(I)Ljava/lang/CharSequence;
    .locals 3

    .line 79
    iget-object v0, p0, Lcolor/support/v7/app/c;->f:[Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 82
    :cond_0
    array-length v2, v0

    if-lt p1, v2, :cond_1

    return-object v1

    .line 85
    :cond_1
    aget-object p1, v0, p1

    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 70
    iget-object v0, p0, Lcolor/support/v7/app/c;->e:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcolor/support/v7/app/c;->a(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 31
    iget-object p2, p0, Lcolor/support/v7/app/c;->d:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcolor/support/v7/app/c;->a:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x1020014

    .line 32
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 33
    sget v0, Lcolor/support/v7/appcompat/R$id;->summary_text2:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 34
    invoke-virtual {p0, p1}, Lcolor/support/v7/app/c;->a(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 35
    invoke-virtual {p0, p1}, Lcolor/support/v7/app/c;->b(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 36
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/16 p3, 0x8

    .line 38
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 41
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    :goto_0
    invoke-direct {p0, p1, p2}, Lcolor/support/v7/app/c;->a(ILandroid/view/View;)V

    return-object p2
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
