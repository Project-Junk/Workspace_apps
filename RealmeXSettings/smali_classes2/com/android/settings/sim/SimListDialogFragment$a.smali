.class final Lcom/android/settings/sim/SimListDialogFragment$a;
.super Landroid/widget/BaseAdapter;
.source "SimListDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/SimListDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    .line 137
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 138
    iput-object p2, p0, Lcom/android/settings/sim/SimListDialogFragment$a;->a:Ljava/util/List;

    .line 139
    iput-object p1, p0, Lcom/android/settings/sim/SimListDialogFragment$a;->b:Landroid/content/Context;

    return-void
.end method

.method private a(I)Landroid/telephony/SubscriptionInfo;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/android/settings/sim/SimListDialogFragment$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    return-object p1
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/android/settings/sim/SimListDialogFragment$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimListDialogFragment$a;->a(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/android/settings/sim/SimListDialogFragment$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    if-nez p1, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 158
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_1

    .line 164
    iget-object p2, p0, Lcom/android/settings/sim/SimListDialogFragment$a;->c:Landroid/view/LayoutInflater;

    if-nez p2, :cond_0

    .line 165
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/sim/SimListDialogFragment$a;->c:Landroid/view/LayoutInflater;

    .line 167
    :cond_0
    iget-object p2, p0, Lcom/android/settings/sim/SimListDialogFragment$a;->c:Landroid/view/LayoutInflater;

    const v0, 0x7f0d02c4

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 169
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimListDialogFragment$a;->a(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    const p3, 0x7f0a06f9

    .line 171
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v0, 0x7f0a0687

    .line 172
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a030f

    .line 173
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-nez p1, :cond_2

    const p1, 0x7f1214a0

    .line 176
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(I)V

    const-string p1, ""

    .line 177
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object p1, p0, Lcom/android/settings/sim/SimListDialogFragment$a;->b:Landroid/content/Context;

    const p3, 0x7f0806e1

    invoke-virtual {p1, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 179
    iget-object p1, p0, Lcom/android/settings/sim/SimListDialogFragment$a;->b:Landroid/content/Context;

    const p3, 0x1010038

    .line 180
    invoke-static {p1, p3}, Lcom/android/settings/m;->j(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 179
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 182
    :cond_2
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object p3, p0, Lcom/android/settings/sim/SimListDialogFragment$a;->b:Landroid/content/Context;

    invoke-virtual {p1, p3}, Landroid/telephony/SubscriptionInfo;->createIconBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-object p2
.end method
