.class public Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "HighUsageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/widget/ImageView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 53
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 54
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter$ViewHolder;->a:Landroid/view/View;

    const v0, 0x7f0a009d

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter$ViewHolder;->b:Landroid/widget/ImageView;

    const v0, 0x7f0a009f

    .line 56
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter$ViewHolder;->c:Landroid/widget/TextView;

    const v0, 0x7f0a00a3

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter$ViewHolder;->d:Landroid/widget/TextView;

    return-void
.end method
