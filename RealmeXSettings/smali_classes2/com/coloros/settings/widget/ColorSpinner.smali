.class public Lcom/coloros/settings/widget/ColorSpinner;
.super Landroid/widget/LinearLayout;
.source "ColorSpinner.java"


# instance fields
.field public a:Lcom/color/support/widget/popupwindow/ColorPopupListWindow;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/widget/ColorSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d01a7

    const/4 v1, 0x1

    invoke-virtual {p2, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0a01ad

    .line 33
    invoke-virtual {p0, v0}, Lcom/coloros/settings/widget/ColorSpinner;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/widget/ColorSpinner;->b:Landroid/widget/TextView;

    const v0, 0x7f0a01ac

    .line 34
    invoke-virtual {p0, v0}, Lcom/coloros/settings/widget/ColorSpinner;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/settings/widget/ColorSpinner;->c:Landroid/widget/ImageView;

    .line 35
    new-instance v0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;

    invoke-direct {v0, p1}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/settings/widget/ColorSpinner;->a:Lcom/color/support/widget/popupwindow/ColorPopupListWindow;

    .line 36
    new-instance p1, Lcom/coloros/settings/widget/-$$Lambda$ColorSpinner$EzMu82shi8f06BIETPKaigpcP2Y;

    invoke-direct {p1, p0}, Lcom/coloros/settings/widget/-$$Lambda$ColorSpinner$EzMu82shi8f06BIETPKaigpcP2Y;-><init>(Lcom/coloros/settings/widget/ColorSpinner;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 4

    .line 37
    iget-object p1, p0, Lcom/coloros/settings/widget/ColorSpinner;->d:[Ljava/lang/String;

    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    array-length p1, p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 p1, 0x0

    .line 39
    :goto_0
    iget-object v1, p0, Lcom/coloros/settings/widget/ColorSpinner;->d:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x1

    if-ge p1, v2, :cond_0

    .line 40
    new-instance v2, Lcom/color/support/widget/popupwindow/PopupListItem;

    aget-object v1, v1, p1

    invoke-direct {v2, v1, v3}, Lcom/color/support/widget/popupwindow/PopupListItem;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 42
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/widget/ColorSpinner;->a:Lcom/color/support/widget/popupwindow/ColorPopupListWindow;

    invoke-virtual {p1, v0}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->setItemList(Ljava/util/List;)V

    .line 43
    iget-object p1, p0, Lcom/coloros/settings/widget/ColorSpinner;->a:Lcom/color/support/widget/popupwindow/ColorPopupListWindow;

    invoke-virtual {p1, v3}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->setDismissTouchOutside(Z)V

    .line 44
    iget-object p1, p0, Lcom/coloros/settings/widget/ColorSpinner;->a:Lcom/color/support/widget/popupwindow/ColorPopupListWindow;

    iget-object v0, p0, Lcom/coloros/settings/widget/ColorSpinner;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->show(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$EzMu82shi8f06BIETPKaigpcP2Y(Lcom/coloros/settings/widget/ColorSpinner;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/widget/ColorSpinner;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/coloros/settings/widget/ColorSpinner;->a:Lcom/color/support/widget/popupwindow/ColorPopupListWindow;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public setSelection(I)V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/coloros/settings/widget/ColorSpinner;->d:[Ljava/lang/String;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/coloros/settings/widget/ColorSpinner;->b:Landroid/widget/TextView;

    aget-object p1, v0, p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitles([Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/coloros/settings/widget/ColorSpinner;->d:[Ljava/lang/String;

    return-void
.end method
