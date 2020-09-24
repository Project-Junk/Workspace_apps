.class final Lcom/coloros/settings/widget/ColorInputPreference$2;
.super Ljava/lang/Object;
.source "ColorInputPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/widget/ColorInputPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/widget/ColorInputPreference;


# direct methods
.method constructor <init>(Lcom/coloros/settings/widget/ColorInputPreference;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/coloros/settings/widget/ColorInputPreference$2;->a:Lcom/coloros/settings/widget/ColorInputPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 229
    iget-object p1, p0, Lcom/coloros/settings/widget/ColorInputPreference$2;->a:Lcom/coloros/settings/widget/ColorInputPreference;

    invoke-static {p1}, Lcom/coloros/settings/widget/ColorInputPreference;->a(Lcom/coloros/settings/widget/ColorInputPreference;)Lcom/color/support/widget/ColorEditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorEditText;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object p1, p0, Lcom/coloros/settings/widget/ColorInputPreference$2;->a:Lcom/coloros/settings/widget/ColorInputPreference;

    invoke-static {p1}, Lcom/coloros/settings/widget/ColorInputPreference;->a(Lcom/coloros/settings/widget/ColorInputPreference;)Lcom/color/support/widget/ColorEditText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/color/support/widget/ColorEditText;->requestFocus()Z

    .line 231
    iget-object p1, p0, Lcom/coloros/settings/widget/ColorInputPreference$2;->a:Lcom/coloros/settings/widget/ColorInputPreference;

    invoke-static {p1}, Lcom/coloros/settings/widget/ColorInputPreference;->b(Lcom/coloros/settings/widget/ColorInputPreference;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
