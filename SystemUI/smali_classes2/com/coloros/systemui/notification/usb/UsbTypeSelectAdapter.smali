.class public Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter;
.super Landroid/widget/BaseAdapter;
.source "UsbTypeSelectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter$ViewHolder;,
        Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter$RadioButtonClickListener;
    }
.end annotation


# instance fields
.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIcons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mRadioButtonListener:Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter$RadioButtonClickListener;

.field private mStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter;->mStates:Ljava/util/HashMap;

    .line 50
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 51
    iput-object p2, p0, Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter;->mData:Ljava/util/List;

    .line 52
    iput-object p3, p0, Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter;->mIcons:Ljava/util/List;

    .line 55
    iget-object p0, p0, Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter;->mStates:Ljava/util/HashMap;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter;)Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter$RadioButtonClickListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter;->mRadioButtonListener:Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter$RadioButtonClickListener;

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter;->mData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter;->mData:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    .line 96
    new-instance p2, Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter$ViewHolder;

    invoke-direct {p2}, Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter$ViewHolder;-><init>()V

    :try_start_0
    const-string p3, "/system/fonts/ColorOSUI-Medium.ttf"

    .line 101
    invoke-static {p3}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 103
    :catch_0
    sget-object p3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const-string v0, "Common"

    const-string v1, "SystemUi--"

    const-string v2, "create_special_typeface_fail"

    .line 104
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d021b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a05a1

    .line 107
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    .line 108
    iget-object v1, p2, Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const p3, 0x7f0a02c1

    .line 110
    invoke-virtual {v0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p2, Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    const p3, 0x7f0a0515

    .line 111
    invoke-virtual {v0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RadioButton;

    iput-object p3, p2, Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter$ViewHolder;->mRadioBt:Landroid/widget/RadioButton;

    .line 112
    iget-object p3, p2, Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter$ViewHolder;->mRadioBt:Landroid/widget/RadioButton;

    new-instance v1, Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter$1;-><init>(Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter;I)V

    invoke-virtual {p3, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 126
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter$ViewHolder;

    move-object v0, p2

    move-object p2, p3

    .line 129
    :goto_1
    iget-object p3, p2, Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object p3, p2, Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter;->mIcons:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    iget-object p3, p0, Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter;->mStates:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    const/4 v1, 0x0

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter;->mStates:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_3

    .line 137
    :cond_2
    :goto_2
    iget-object p0, p0, Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter;->mStates:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :goto_3
    iget-object p0, p2, Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter$ViewHolder;->mRadioBt:Landroid/widget/RadioButton;

    invoke-virtual {p0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-object v0
.end method

.method public setChecked(I)V
    .locals 4

    .line 62
    iget-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter;->mStates:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 63
    iget-object v2, p0, Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter;->mStates:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v1, p0, Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter;->mStates:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setRadioClickListener(Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter$RadioButtonClickListener;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter;->mRadioButtonListener:Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter$RadioButtonClickListener;

    return-void
.end method
