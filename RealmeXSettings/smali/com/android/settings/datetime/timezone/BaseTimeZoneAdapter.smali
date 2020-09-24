.class public Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BaseTimeZoneAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$b;,
        Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;,
        Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$c;,
        Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$a;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter<",
            "TT;>.b;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Locale;

.field private final e:Z

.field private final f:Z

.field private final g:Ljava/lang/CharSequence;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$a;Ljava/util/Locale;ZLjava/lang/CharSequence;)V
    .locals 0
    .param p5    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$a<",
            "TT;>;",
            "Ljava/util/Locale;",
            "Z",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->b:Ljava/util/List;

    .line 67
    iput-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->h:Ljava/util/List;

    .line 68
    iput-object p2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->c:Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$a;

    .line 69
    iput-object p3, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->d:Ljava/util/Locale;

    .line 70
    iput-boolean p4, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->e:Z

    const/4 p1, 0x1

    if-eqz p5, :cond_0

    move p2, p1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 71
    :goto_0
    iput-boolean p2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->f:Z

    .line 72
    iput-object p5, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->g:Ljava/lang/CharSequence;

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->setHasStableIds(Z)V

    return-void
.end method

.method private a()I
    .locals 1

    .line 133
    iget-boolean v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic a(Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->h:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;)Ljava/util/Locale;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->d:Ljava/util/Locale;

    return-object p0
.end method

.method private a(I)Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->f:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private b(I)Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$a;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->h:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->a()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$a;

    return-object p1
.end method

.method static synthetic b(Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;)Ljava/util/List;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->b:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->a()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 110
    invoke-direct {p0, p1}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->b(I)Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$a;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 98
    instance-of v0, p1, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$c;

    if-eqz v0, :cond_0

    .line 99
    check-cast p1, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$c;

    iget-object p2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->g:Ljava/lang/CharSequence;

    .line 1182
    iget-object p1, p1, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$c;->a:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 100
    :cond_0
    instance-of v0, p1, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;

    if-eqz v0, :cond_2

    .line 101
    check-cast p1, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;

    .line 102
    invoke-direct {p0, p2}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->b(I)Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$a;

    move-result-object p2

    .line 1210
    iput-object p2, p1, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;->g:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$a;

    .line 1211
    iget-object v0, p1, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;->c:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$a;->a()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1212
    iget-object v0, p1, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1213
    iget-object v0, p1, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;->e:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$a;->b()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1214
    iget-object v0, p1, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;->f:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$a;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object p1, p1, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;->b:Landroid/view/View;

    iget-boolean p2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->e:Z

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 79
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    const p2, 0x7f0d0372

    .line 88
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 89
    new-instance p2, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->c:Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$a;

    invoke-direct {p2, p1, v0}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;-><init>(Landroid/view/View;Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$a;)V

    return-object p2

    .line 92
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Unexpected viewType: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const p2, 0x7f0d0371

    .line 82
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 85
    new-instance p2, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$c;

    invoke-direct {p2, p1}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$c;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final setHasStableIds(Z)V
    .locals 0

    .line 129
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-void
.end method
