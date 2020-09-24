.class final Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference$b;
.super Landroid/widget/ArrayAdapter;
.source "OppoZenModeListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;


# direct methods
.method public constructor <init>(Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;Landroid/content/Context;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference$b;->a:Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;

    const p1, 0x1090008

    .line 184
    invoke-direct {p0, p2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public final getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference$b;->a:Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;

    invoke-static {v0}, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;->a(Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    if-nez p2, :cond_0

    const p2, 0x7f0d00b9

    const/4 v1, 0x0

    .line 1209
    invoke-virtual {v0, p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f0a013c

    .line 1215
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_2

    .line 1217
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference$b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 1218
    instance-of v1, v0, Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 1219
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1221
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1224
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference$b;->getCount()I

    move-result p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_3

    if-eqz p1, :cond_3

    sub-int/2addr p3, v0

    if-ne p1, p3, :cond_3

    const p1, 0x7f0a0189

    .line 1231
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 p3, 0x8

    .line 1232
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-object p2
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
