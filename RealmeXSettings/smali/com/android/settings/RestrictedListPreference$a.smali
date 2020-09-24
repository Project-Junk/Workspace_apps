.class public final Lcom/android/settings/RestrictedListPreference$a;
.super Landroid/widget/ArrayAdapter;
.source "RestrictedListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RestrictedListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/RestrictedListPreference;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/android/settings/RestrictedListPreference;Landroid/content/Context;[Ljava/lang/CharSequence;I)V
    .locals 1

    .line 180
    iput-object p1, p0, Lcom/android/settings/RestrictedListPreference$a;->a:Lcom/android/settings/RestrictedListPreference;

    const p1, 0x7f0d02a1

    const v0, 0x7f0a06d9

    .line 181
    invoke-direct {p0, p2, p1, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 182
    iput p4, p0, Lcom/android/settings/RestrictedListPreference$a;->b:I

    return-void
.end method


# virtual methods
.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 187
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 188
    invoke-virtual {p0, p1}, Lcom/android/settings/RestrictedListPreference$a;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    const v0, 0x7f0a06d9

    .line 189
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    const v1, 0x7f0a056c

    .line 190
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 191
    iget-object v2, p0, Lcom/android/settings/RestrictedListPreference$a;->a:Lcom/android/settings/RestrictedListPreference;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p3, :cond_1

    .line 1132
    iget-object v2, v2, Lcom/android/settings/RestrictedListPreference;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/RestrictedListPreference$b;

    .line 1133
    iget-object v5, v5, Lcom/android/settings/RestrictedListPreference$b;->a:Ljava/lang/CharSequence;

    invoke-virtual {p3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move p3, v3

    goto :goto_0

    :cond_1
    move p3, v4

    :goto_0
    if-eqz p3, :cond_2

    .line 192
    invoke-virtual {v0, v4}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 193
    invoke-virtual {v0, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 194
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 196
    :cond_2
    iget p3, p0, Lcom/android/settings/RestrictedListPreference$a;->b:I

    const/4 v2, -0x1

    if-eq p3, v2, :cond_4

    if-ne p1, p3, :cond_3

    move v4, v3

    .line 197
    :cond_3
    invoke-virtual {v0, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 199
    :cond_4
    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_5

    .line 200
    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    :cond_5
    const/16 p1, 0x8

    .line 202
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-object p2
.end method

.method public final hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
