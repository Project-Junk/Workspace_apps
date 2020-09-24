.class Lcom/color/support/preference/ColorInputPreference$2;
.super Ljava/lang/Object;
.source "ColorInputPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/preference/ColorInputPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/preference/ColorInputPreference;


# direct methods
.method constructor <init>(Lcom/color/support/preference/ColorInputPreference;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/color/support/preference/ColorInputPreference$2;->this$0:Lcom/color/support/preference/ColorInputPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 283
    iget-object p1, p0, Lcom/color/support/preference/ColorInputPreference$2;->this$0:Lcom/color/support/preference/ColorInputPreference;

    invoke-static {p1}, Lcom/color/support/preference/ColorInputPreference;->access$000(Lcom/color/support/preference/ColorInputPreference;)Lcom/color/support/widget/ColorEditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorEditText;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object p1, p0, Lcom/color/support/preference/ColorInputPreference$2;->this$0:Lcom/color/support/preference/ColorInputPreference;

    invoke-static {p1}, Lcom/color/support/preference/ColorInputPreference;->access$000(Lcom/color/support/preference/ColorInputPreference;)Lcom/color/support/widget/ColorEditText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/color/support/widget/ColorEditText;->requestFocus()Z

    .line 285
    iget-object p0, p0, Lcom/color/support/preference/ColorInputPreference$2;->this$0:Lcom/color/support/preference/ColorInputPreference;

    invoke-static {p0}, Lcom/color/support/preference/ColorInputPreference;->access$100(Lcom/color/support/preference/ColorInputPreference;)Landroid/widget/ImageView;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
