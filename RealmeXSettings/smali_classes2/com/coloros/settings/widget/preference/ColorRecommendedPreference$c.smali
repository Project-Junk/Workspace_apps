.class final Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$c;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ColorRecommendedPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/widget/preference/ColorRecommendedPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 249
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 250
    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$c;->a:Landroid/widget/TextView;

    return-void
.end method
