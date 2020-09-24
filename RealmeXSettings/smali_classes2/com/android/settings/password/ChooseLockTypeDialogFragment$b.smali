.class final Lcom/android/settings/password/ChooseLockTypeDialogFragment$b;
.super Landroid/widget/ArrayAdapter;
.source "ChooseLockTypeDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockTypeDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/android/settings/password/f;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/android/settings/password/a;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/password/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/settings/password/f;",
            ">;",
            "Lcom/android/settings/password/a;",
            ")V"
        }
    .end annotation

    const v0, 0x7f0d005f

    .line 153
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 154
    iput-object p3, p0, Lcom/android/settings/password/ChooseLockTypeDialogFragment$b;->a:Lcom/android/settings/password/a;

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 159
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez p2, :cond_0

    .line 161
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0d005f

    const/4 v2, 0x0

    .line 162
    invoke-virtual {p2, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 164
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockTypeDialogFragment$b;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/password/f;

    .line 165
    move-object p3, p2

    check-cast p3, Landroid/widget/TextView;

    .line 166
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockTypeDialogFragment$b;->a:Lcom/android/settings/password/a;

    .line 1154
    sget-object v2, Lcom/android/settings/password/a$1;->a:[I

    invoke-virtual {p1}, Lcom/android/settings/password/f;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    move-object v1, v3

    goto :goto_0

    .line 1164
    :pswitch_0
    iget-object v1, v1, Lcom/android/settings/password/a;->a:Landroid/content/Context;

    const v2, 0x7f12178a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 1160
    :pswitch_1
    iget-object v1, v1, Lcom/android/settings/password/a;->a:Landroid/content/Context;

    const v2, 0x7f12178c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 1162
    :pswitch_2
    iget-object v1, v1, Lcom/android/settings/password/a;->a:Landroid/content/Context;

    const v2, 0x7f12178e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :pswitch_3
    const-string v1, ""

    goto :goto_0

    .line 1158
    :pswitch_4
    iget-object v1, v1, Lcom/android/settings/password/a;->a:Landroid/content/Context;

    const v2, 0x7f121786

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 1156
    :pswitch_5
    iget-object v1, v1, Lcom/android/settings/password/a;->a:Landroid/content/Context;

    const v2, 0x7f121788

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 166
    :goto_0
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2173
    sget-object v1, Lcom/android/settings/password/ChooseLockTypeDialogFragment$1;->a:[I

    invoke-virtual {p1}, Lcom/android/settings/password/f;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    move-object p1, v3

    goto :goto_1

    :cond_1
    const p1, 0x7f0807f9

    .line 2179
    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_1

    :cond_2
    const p1, 0x7f0807ff

    .line 2177
    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_1

    :cond_3
    const p1, 0x7f0807fa

    .line 2175
    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 167
    :goto_1
    invoke-virtual {p3, p1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
