.class public Lcom/coloros/settings/feature/othersettings/development/ColorRunningProcessesView;
.super Lcom/android/settings/applications/RunningProcessesView;
.source "ColorRunningProcessesView.java"


# instance fields
.field z:Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/RunningProcessesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 11

    .line 65
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/ColorRunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorRunningProcessesView;->d:Landroid/app/ActivityManager;

    .line 67
    invoke-static {v0}, Lcom/android/settings/applications/y;->a(Landroid/content/Context;)Lcom/android/settings/applications/y;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorRunningProcessesView;->e:Lcom/android/settings/applications/y;

    const-string v1, "layout_inflater"

    .line 68
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f0d00dc

    .line 70
    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v2, 0x102000a

    .line 71
    invoke-virtual {p0, v2}, Lcom/coloros/settings/feature/othersettings/development/ColorRunningProcessesView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/coloros/settings/feature/othersettings/development/ColorRunningProcessesView;->j:Landroid/widget/ListView;

    const v2, 0x1020004

    .line 72
    invoke-virtual {p0, v2}, Lcom/coloros/settings/feature/othersettings/development/ColorRunningProcessesView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 74
    iget-object v3, p0, Lcom/coloros/settings/feature/othersettings/development/ColorRunningProcessesView;->j:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 76
    :cond_0
    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/development/ColorRunningProcessesView;->j:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 77
    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/development/ColorRunningProcessesView;->j:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 78
    new-instance v2, Lcom/android/settings/applications/RunningProcessesView$b;

    iget-object v3, p0, Lcom/coloros/settings/feature/othersettings/development/ColorRunningProcessesView;->e:Lcom/android/settings/applications/y;

    invoke-direct {v2, p0, v3}, Lcom/android/settings/applications/RunningProcessesView$b;-><init>(Lcom/android/settings/applications/RunningProcessesView;Lcom/android/settings/applications/y;)V

    iput-object v2, p0, Lcom/coloros/settings/feature/othersettings/development/ColorRunningProcessesView;->l:Lcom/android/settings/applications/RunningProcessesView$b;

    .line 79
    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/development/ColorRunningProcessesView;->j:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/coloros/settings/feature/othersettings/development/ColorRunningProcessesView;->l:Lcom/android/settings/applications/RunningProcessesView$b;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v2, 0x7f0d00da

    const/4 v3, 0x0

    .line 80
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorRunningProcessesView;->k:Landroid/view/View;

    .line 82
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorRunningProcessesView;->k:Landroid/view/View;

    const v2, 0x7f0a0548

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 83
    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/development/ColorRunningProcessesView;->k:Landroid/view/View;

    const v4, 0x7f0a0549

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 84
    iget-object v4, p0, Lcom/coloros/settings/feature/othersettings/development/ColorRunningProcessesView;->k:Landroid/view/View;

    const v5, 0x7f0a054a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 86
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070616

    .line 87
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v7, 0x7f070617

    .line 88
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const v8, 0x7f070323

    .line 89
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v8, 0x7f0602ea

    .line 91
    invoke-virtual {v0, v8}, Landroid/content/Context;->getColor(I)I

    move-result v8

    const v9, 0x7f0602e8

    .line 92
    invoke-virtual {v0, v9}, Landroid/content/Context;->getColor(I)I

    move-result v9

    const v10, 0x7f0602e9

    .line 93
    invoke-virtual {v0, v10}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 95
    new-instance v10, Lcom/coloros/settings/feature/storage/widgets/a;

    invoke-direct {v10, v8, v7, v6, v5}, Lcom/coloros/settings/feature/storage/widgets/a;-><init>(IIII)V

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 96
    new-instance v1, Lcom/coloros/settings/feature/storage/widgets/a;

    invoke-direct {v1, v9, v7, v6, v5}, Lcom/coloros/settings/feature/storage/widgets/a;-><init>(IIII)V

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 97
    new-instance v1, Lcom/coloros/settings/feature/storage/widgets/a;

    invoke-direct {v1, v0, v7, v6, v5}, Lcom/coloros/settings/feature/storage/widgets/a;-><init>(IIII)V

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 99
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorRunningProcessesView;->j:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/development/ColorRunningProcessesView;->k:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 100
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorRunningProcessesView;->k:Landroid/view/View;

    const v2, 0x7f0a015c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;

    iput-object v1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorRunningProcessesView;->z:Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;

    .line 101
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorRunningProcessesView;->z:Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;

    .line 1106
    iput v8, v1, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->d:I

    .line 1107
    iput v9, v1, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->e:I

    .line 1108
    iput v0, v1, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->f:I

    .line 1109
    invoke-virtual {v1}, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->a()V

    .line 1110
    invoke-virtual {v1}, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->invalidate()V

    .line 102
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorRunningProcessesView;->k:Landroid/view/View;

    const v1, 0x7f0a02c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorRunningProcessesView;->n:Landroid/widget/TextView;

    .line 103
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorRunningProcessesView;->k:Landroid/view/View;

    const v1, 0x7f0a00b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorRunningProcessesView;->o:Landroid/widget/TextView;

    .line 104
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorRunningProcessesView;->k:Landroid/view/View;

    const v1, 0x7f0a06c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorRunningProcessesView;->p:Landroid/widget/TextView;

    .line 105
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorRunningProcessesView;->k:Landroid/view/View;

    const v1, 0x7f0a02c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorRunningProcessesView;->q:Landroid/widget/TextView;

    .line 106
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorRunningProcessesView;->k:Landroid/view/View;

    const v1, 0x7f0a00b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorRunningProcessesView;->r:Landroid/widget/TextView;

    .line 107
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorRunningProcessesView;->k:Landroid/view/View;

    const v1, 0x7f0a06c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorRunningProcessesView;->s:Landroid/widget/TextView;

    .line 109
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 110
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorRunningProcessesView;->d:Landroid/app/ActivityManager;

    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 111
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    iput-wide v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorRunningProcessesView;->b:J

    .line 112
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorRunningProcessesView;->j:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setDividerHeight(I)V

    return-void
.end method

.method public final a(IJJJJ)V
    .locals 0

    .line 44
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorRunningProcessesView;->z:Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;

    long-to-float p2, p2

    long-to-float p3, p8

    div-float/2addr p2, p3

    long-to-float p4, p4

    div-float/2addr p4, p3

    long-to-float p5, p6

    div-float/2addr p5, p3

    .line 1099
    iput p2, p1, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->a:F

    .line 1100
    iput p4, p1, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->b:F

    .line 1101
    iput p5, p1, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->c:F

    .line 1102
    invoke-virtual {p1}, Lcom/coloros/settings/feature/othersettings/development/LinearColorBar;->invalidate()V

    return-void
.end method

.method public final a(Landroid/view/View;II)V
    .locals 0

    .line 51
    invoke-static {p1, p2, p3}, Lcom/coloros/settings/utils/w;->a(Landroid/view/View;II)V

    const p2, 0x7f0a034b

    .line 52
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 p2, 0x8

    .line 54
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public getRunningItemLayoutRedID()I
    .locals 1

    const v0, 0x7f0d00db

    return v0
.end method
