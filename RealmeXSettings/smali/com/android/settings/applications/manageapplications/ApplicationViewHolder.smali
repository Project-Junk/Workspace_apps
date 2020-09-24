.class public Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ApplicationViewHolder.java"


# instance fields
.field final a:Landroid/widget/ImageView;

.field public final b:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final c:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public final d:Landroid/view/ViewGroup;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final e:Landroid/widget/Switch;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public f:Lcom/color/support/widget/ColorSwitch;

.field public g:Landroid/widget/TextView;

.field private final h:Landroid/widget/TextView;

.field private i:Lcom/coloros/settings/adaptor/ApplicationViewHolderAdaptor;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 57
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x1020016

    .line 58
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->h:Landroid/widget/TextView;

    const v0, 0x1020006

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->a:Landroid/widget/ImageView;

    const v0, 0x1020010

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->b:Landroid/widget/TextView;

    const v0, 0x7f0a00b1

    .line 61
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->c:Landroid/widget/TextView;

    const v0, 0x7f0a06b6

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->e:Landroid/widget/Switch;

    const v0, 0x1020018

    .line 63
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->d:Landroid/view/ViewGroup;

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->a()Lcom/coloros/settings/adaptor/ApplicationViewHolderAdaptor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coloros/settings/adaptor/ApplicationViewHolderAdaptor;->initSwitch(Landroid/view/View;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->a()Lcom/coloros/settings/adaptor/ApplicationViewHolderAdaptor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coloros/settings/adaptor/ApplicationViewHolderAdaptor;->initSizeText(Landroid/view/View;)V

    return-void
.end method

.method static a(Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 7

    .line 73
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d024e

    .line 74
    invoke-static {v1}, Lcom/coloros/settings/adaptor/ApplicationViewHolderAdaptor;->getItemLayoutResId(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 77
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x1020016

    .line 78
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 80
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06012b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    const v3, 0x1020010

    .line 83
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f060126

    if-eqz v3, :cond_1

    .line 85
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    const v3, 0x7f0a00b1

    .line 87
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 89
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v5, v4, v1}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 91
    :cond_2
    invoke-static {v0, p1}, Lcom/coloros/settings/adaptor/ApplicationViewHolderAdaptor;->updateWidgetFrame(Landroid/view/View;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    const v1, 0x1020018

    .line 94
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_4

    if-eqz v1, :cond_5

    .line 97
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v3, 0x7f0d027a

    const/4 v4, 0x1

    .line 98
    invoke-virtual {p1, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 100
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p1, 0x7f0d0270

    invoke-virtual {p0, p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 103
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    sub-int/2addr p1, v4

    invoke-virtual {v0, p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    const/16 p0, 0x8

    .line 106
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_5
    :goto_0
    return-object v0
.end method


# virtual methods
.method final a()Lcom/coloros/settings/adaptor/ApplicationViewHolderAdaptor;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->i:Lcom/coloros/settings/adaptor/ApplicationViewHolderAdaptor;

    if-nez v0, :cond_0

    .line 206
    const-class v0, Lcom/coloros/settings/adaptor/ApplicationViewHolderAdaptor;

    invoke-static {v0}, Lcom/color/injector/adaptor/ClassAdaptor;->getAdaptor(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/adaptor/ApplicationViewHolderAdaptor;

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->i:Lcom/coloros/settings/adaptor/ApplicationViewHolderAdaptor;

    .line 207
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->i:Lcom/coloros/settings/adaptor/ApplicationViewHolderAdaptor;

    invoke-virtual {v0, p0}, Lcom/coloros/settings/adaptor/ApplicationViewHolderAdaptor;->bind(Ljava/lang/Object;)V

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->i:Lcom/coloros/settings/adaptor/ApplicationViewHolderAdaptor;

    return-object v0
.end method

.method final a(I)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public final a(Landroid/view/View$OnClickListener;ZZ)V
    .locals 1

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->a()Lcom/coloros/settings/adaptor/ApplicationViewHolderAdaptor;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/coloros/settings/adaptor/ApplicationViewHolderAdaptor;->updateSwitch(Landroid/view/View$OnClickListener;ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->e:Landroid/widget/Switch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->d:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 191
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->e:Landroid/widget/Switch;

    invoke-virtual {p1, p3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 193
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->e:Landroid/widget/Switch;

    invoke-virtual {p1, p2}, Landroid/widget/Switch;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method final a(Ljava/lang/CharSequence;)V
    .locals 2

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->a()Lcom/coloros/settings/adaptor/ApplicationViewHolderAdaptor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1, p1}, Lcom/coloros/settings/adaptor/ApplicationViewHolderAdaptor;->setSizeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->a()Lcom/coloros/settings/adaptor/ApplicationViewHolderAdaptor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/adaptor/ApplicationViewHolderAdaptor;->updateSummary(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method final b(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
