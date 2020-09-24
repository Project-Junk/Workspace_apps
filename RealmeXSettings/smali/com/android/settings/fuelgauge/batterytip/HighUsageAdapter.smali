.class public Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "HighUsageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/util/IconDrawableFactory;

.field private final c:Landroid/content/pm/PackageManager;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/c;",
            ">;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;->a:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;->d:Ljava/util/List;

    .line 64
    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;->b:Landroid/util/IconDrawableFactory;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;->c:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    .line 40
    check-cast p1, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter$ViewHolder;

    .line 1077
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/fuelgauge/batterytip/c;

    .line 1078
    iget-object v0, p1, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter$ViewHolder;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;->b:Landroid/util/IconDrawableFactory;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;->c:Landroid/content/pm/PackageManager;

    iget-object v3, p2, Lcom/android/settings/fuelgauge/batterytip/c;->a:Ljava/lang/String;

    iget v4, p2, Lcom/android/settings/fuelgauge/batterytip/c;->d:I

    .line 1080
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 1079
    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/m;->a(Landroid/util/IconDrawableFactory;Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1078
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1081
    iget-object p1, p1, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter$ViewHolder;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;->a:Landroid/content/Context;

    iget-object p2, p2, Lcom/android/settings/fuelgauge/batterytip/c;->a:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/android/settings/m;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 2070
    iget-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0042

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2072
    new-instance p2, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
