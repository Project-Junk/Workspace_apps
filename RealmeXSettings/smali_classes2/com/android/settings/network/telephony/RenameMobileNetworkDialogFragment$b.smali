.class final Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$b;
.super Landroid/widget/ArrayAdapter;
.source "RenameMobileNetworkDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;

.field private b:Landroid/content/Context;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;Landroid/content/Context;[Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$a;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$b;->a:Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;

    const p1, 0x7f0d015a

    .line 179
    invoke-direct {p0, p2, p1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 180
    iput-object p2, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$b;->b:Landroid/content/Context;

    .line 181
    iput p1, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$b;->c:I

    return-void
.end method


# virtual methods
.method public final getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 202
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$b;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 186
    iget-object p3, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$b;->b:Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 187
    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    if-nez p2, :cond_0

    .line 190
    iget p2, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$b;->c:I

    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f0a0165

    .line 192
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 193
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$a;

    .line 1245
    iget-object v0, v0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$a;->c:Landroid/graphics/drawable/ShapeDrawable;

    .line 193
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p3, 0x7f0a016d

    .line 194
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 195
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$b;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$a;

    .line 2237
    iget-object p1, p1, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$a;->a:Ljava/lang/String;

    .line 195
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
