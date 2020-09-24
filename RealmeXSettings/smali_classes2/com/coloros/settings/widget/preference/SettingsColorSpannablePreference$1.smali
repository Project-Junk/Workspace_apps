.class final Lcom/coloros/settings/widget/preference/SettingsColorSpannablePreference$1;
.super Ljava/lang/Object;
.source "SettingsColorSpannablePreference.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/widget/preference/SettingsColorSpannablePreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/coloros/settings/widget/preference/SettingsColorSpannablePreference;


# direct methods
.method constructor <init>(Lcom/coloros/settings/widget/preference/SettingsColorSpannablePreference;Landroid/widget/TextView;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/coloros/settings/widget/preference/SettingsColorSpannablePreference$1;->b:Lcom/coloros/settings/widget/preference/SettingsColorSpannablePreference;

    iput-object p2, p0, Lcom/coloros/settings/widget/preference/SettingsColorSpannablePreference$1;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 62
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/SettingsColorSpannablePreference$1;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setPressed(Z)V

    .line 74
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/SettingsColorSpannablePreference$1;->a:Landroid/widget/TextView;

    const-wide/16 v1, 0x46

    invoke-virtual {p1, v1, v2}, Landroid/widget/TextView;->postInvalidateDelayed(J)V

    goto :goto_0

    .line 65
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/SettingsColorSpannablePreference$1;->a:Landroid/widget/TextView;

    invoke-static {p2, p1}, Lcom/coloros/settings/widget/preference/SettingsColorSpannablePreference;->a(Landroid/view/MotionEvent;Landroid/widget/TextView;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    .line 68
    :cond_2
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/SettingsColorSpannablePreference$1;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setPressed(Z)V

    .line 69
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/SettingsColorSpannablePreference$1;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    :goto_0
    return v0
.end method
