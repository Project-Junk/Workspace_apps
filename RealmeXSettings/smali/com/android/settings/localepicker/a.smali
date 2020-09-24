.class final Lcom/android/settings/localepicker/a;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "LocaleDragAndDropAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/localepicker/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/settings/localepicker/a$a;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field final b:Landroidx/recyclerview/widget/ItemTouchHelper;

.field c:Landroidx/recyclerview/widget/RecyclerView;

.field d:Z

.field private final e:Landroid/content/Context;

.field private f:Z

.field private g:Ljava/text/NumberFormat;

.field private h:Landroid/os/LocaleList;

.field private i:Landroid/os/LocaleList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;)V"
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/android/settings/localepicker/a;->c:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    .line 56
    iput-boolean v1, p0, Lcom/android/settings/localepicker/a;->d:Z

    const/4 v1, 0x1

    .line 57
    iput-boolean v1, p0, Lcom/android/settings/localepicker/a;->f:Z

    .line 58
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/localepicker/a;->g:Ljava/text/NumberFormat;

    .line 273
    iput-object v0, p0, Lcom/android/settings/localepicker/a;->h:Landroid/os/LocaleList;

    .line 274
    iput-object v0, p0, Lcom/android/settings/localepicker/a;->i:Landroid/os/LocaleList;

    .line 86
    iput-object p2, p0, Lcom/android/settings/localepicker/a;->a:Ljava/util/List;

    .line 87
    iput-object p1, p0, Lcom/android/settings/localepicker/a;->e:Landroid/content/Context;

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 p2, 0x41000000    # 8.0f

    .line 89
    invoke-static {v1, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    .line 92
    new-instance p2, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v0, Lcom/android/settings/localepicker/a$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/localepicker/a$1;-><init>(Lcom/android/settings/localepicker/a;F)V

    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object p2, p0, Lcom/android/settings/localepicker/a;->b:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/localepicker/a;Landroid/os/LocaleList;)Landroid/os/LocaleList;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/android/settings/localepicker/a;->i:Landroid/os/LocaleList;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/localepicker/a;Ljava/text/NumberFormat;)Ljava/text/NumberFormat;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/android/settings/localepicker/a;->g:Ljava/text/NumberFormat;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/localepicker/a;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/android/settings/localepicker/a;->f:Z

    return p0
.end method

.method static synthetic b(Lcom/android/settings/localepicker/a;)Landroidx/recyclerview/widget/ItemTouchHelper;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/localepicker/a;->b:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-object p0
.end method

.method static synthetic c(Lcom/android/settings/localepicker/a;)Landroid/os/LocaleList;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/localepicker/a;->h:Landroid/os/LocaleList;

    return-object p0
.end method

.method static synthetic d(Lcom/android/settings/localepicker/a;)Landroid/os/LocaleList;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/localepicker/a;->i:Landroid/os/LocaleList;

    return-object p0
.end method

.method static synthetic e(Lcom/android/settings/localepicker/a;)Landroid/content/Context;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/localepicker/a;->e:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic f(Lcom/android/settings/localepicker/a;)Landroid/os/LocaleList;
    .locals 1

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/android/settings/localepicker/a;->h:Landroid/os/LocaleList;

    return-object v0
.end method


# virtual methods
.method final a()I
    .locals 3

    .line 246
    iget-object v0, p0, Lcom/android/settings/localepicker/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 247
    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method final a(II)V
    .locals 4

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/settings/localepicker/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 193
    iget-object v1, p0, Lcom/android/settings/localepicker/a;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 194
    iget-object v1, p0, Lcom/android/settings/localepicker/a;->a:Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 198
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 199
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Negative position in onItemMove %d -> %d"

    .line 198
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocaleDragAndDropAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/localepicker/a;->notifyItemChanged(I)V

    .line 202
    invoke-virtual {p0, p2}, Lcom/android/settings/localepicker/a;->notifyItemChanged(I)V

    .line 203
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/localepicker/a;->notifyItemMoved(II)V

    return-void
.end method

.method final a(Z)V
    .locals 3

    .line 209
    iput-boolean p1, p0, Lcom/android/settings/localepicker/a;->d:Z

    .line 210
    iget-object p1, p0, Lcom/android/settings/localepicker/a;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 212
    iget-object v2, p0, Lcom/android/settings/localepicker/a;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v2, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->setChecked(Z)V

    .line 213
    invoke-virtual {p0, v1}, Lcom/android/settings/localepicker/a;->notifyItemChanged(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 4

    .line 261
    iget-object v0, p0, Lcom/android/settings/localepicker/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 262
    new-array v1, v0, [Ljava/util/Locale;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 265
    iget-object v3, p0, Lcom/android/settings/localepicker/a;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 266
    invoke-virtual {v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 269
    :cond_0
    new-instance v0, Landroid/os/LocaleList;

    invoke-direct {v0, v1}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    .line 3277
    iget-object v1, p0, Lcom/android/settings/localepicker/a;->h:Landroid/os/LocaleList;

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3283
    invoke-static {v0}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;)V

    .line 3285
    iput-object v0, p0, Lcom/android/settings/localepicker/a;->h:Landroid/os/LocaleList;

    .line 3286
    iget-object v0, p0, Lcom/android/settings/localepicker/a;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    .line 3287
    new-instance v1, Lcom/android/settings/localepicker/a$3;

    invoke-direct {v1, p0}, Lcom/android/settings/localepicker/a$3;-><init>(Lcom/android/settings/localepicker/a;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Z

    :cond_1
    return-void
.end method

.method public final getItemCount()I
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/android/settings/localepicker/a;->a:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x2

    if-lt v0, v2, :cond_2

    .line 182
    iget-boolean v2, p0, Lcom/android/settings/localepicker/a;->d:Z

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    .line 2307
    iput-boolean v1, p0, Lcom/android/settings/localepicker/a;->f:Z

    goto :goto_2

    .line 1307
    :cond_2
    :goto_1
    iput-boolean v1, p0, Lcom/android/settings/localepicker/a;->f:Z

    :goto_2
    return v0
.end method

.method public final synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    .line 47
    check-cast p1, Lcom/android/settings/localepicker/a$a;

    .line 4153
    iget-object v0, p0, Lcom/android/settings/localepicker/a;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 5070
    iget-object p1, p1, Lcom/android/settings/localepicker/a$a;->a:Lcom/android/settings/localepicker/LocaleDragCell;

    .line 4155
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameNative()Ljava/lang/String;

    move-result-object v1

    .line 4156
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameInUiLanguage()Ljava/lang/String;

    move-result-object v2

    .line 5091
    iget-object v3, p1, Lcom/android/settings/localepicker/LocaleDragCell;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5092
    iget-object v3, p1, Lcom/android/settings/localepicker/LocaleDragCell;->b:Landroid/widget/CheckBox;

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 5093
    iget-object v1, p1, Lcom/android/settings/localepicker/LocaleDragCell;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 5094
    iget-object v1, p1, Lcom/android/settings/localepicker/LocaleDragCell;->b:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 5095
    invoke-virtual {p1}, Lcom/android/settings/localepicker/LocaleDragCell;->invalidate()V

    .line 4158
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isTranslated()Z

    move-result v1

    .line 5099
    iget-object v2, p1, Lcom/android/settings/localepicker/LocaleDragCell;->d:Landroid/widget/TextView;

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5100
    invoke-virtual {p1}, Lcom/android/settings/localepicker/LocaleDragCell;->invalidate()V

    .line 4159
    iget-object v1, p0, Lcom/android/settings/localepicker/a;->g:Ljava/text/NumberFormat;

    const/4 v2, 0x1

    add-int/2addr p2, v2

    int-to-long v5, p2

    invoke-virtual {v1, v5, v6}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p2

    .line 6086
    iget-object v1, p1, Lcom/android/settings/localepicker/LocaleDragCell;->c:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6087
    invoke-virtual {p1}, Lcom/android/settings/localepicker/LocaleDragCell;->invalidate()V

    .line 4160
    iget-boolean p2, p0, Lcom/android/settings/localepicker/a;->d:Z

    const/4 v1, 0x4

    if-eqz p2, :cond_1

    .line 7065
    iget-object p2, p1, Lcom/android/settings/localepicker/LocaleDragCell;->b:Landroid/widget/CheckBox;

    invoke-virtual {p2, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 7066
    iget-object p2, p1, Lcom/android/settings/localepicker/LocaleDragCell;->a:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 7068
    :cond_1
    iget-object p2, p1, Lcom/android/settings/localepicker/LocaleDragCell;->b:Landroid/widget/CheckBox;

    invoke-virtual {p2, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 7069
    iget-object p2, p1, Lcom/android/settings/localepicker/LocaleDragCell;->a:Landroid/widget/TextView;

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7071
    :goto_1
    invoke-virtual {p1}, Lcom/android/settings/localepicker/LocaleDragCell;->invalidate()V

    .line 7072
    invoke-virtual {p1}, Lcom/android/settings/localepicker/LocaleDragCell;->requestLayout()V

    .line 4161
    iget-boolean p2, p0, Lcom/android/settings/localepicker/a;->d:Z

    xor-int/2addr p2, v2

    .line 7080
    iget-object v5, p1, Lcom/android/settings/localepicker/LocaleDragCell;->c:Landroid/widget/TextView;

    if-eqz p2, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7081
    invoke-virtual {p1}, Lcom/android/settings/localepicker/LocaleDragCell;->invalidate()V

    .line 7082
    invoke-virtual {p1}, Lcom/android/settings/localepicker/LocaleDragCell;->requestLayout()V

    .line 4162
    iget-boolean p2, p0, Lcom/android/settings/localepicker/a;->d:Z

    if-nez p2, :cond_3

    iget-boolean p2, p0, Lcom/android/settings/localepicker/a;->f:Z

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    move v2, v4

    .line 8057
    :goto_2
    iget-object p2, p1, Lcom/android/settings/localepicker/LocaleDragCell;->e:Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    move v1, v4

    :cond_4
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8058
    invoke-virtual {p1}, Lcom/android/settings/localepicker/LocaleDragCell;->invalidate()V

    .line 8059
    invoke-virtual {p1}, Lcom/android/settings/localepicker/LocaleDragCell;->requestLayout()V

    .line 4163
    invoke-virtual {p1, v0}, Lcom/android/settings/localepicker/LocaleDragCell;->setTag(Ljava/lang/Object;)V

    .line 8108
    iget-object p2, p1, Lcom/android/settings/localepicker/LocaleDragCell;->b:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    .line 4167
    invoke-virtual {p2, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 4168
    iget-boolean v1, p0, Lcom/android/settings/localepicker/a;->d:Z

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getChecked()Z

    move-result v4

    :cond_5
    invoke-virtual {p2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 4169
    new-instance v0, Lcom/android/settings/localepicker/a$2;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/localepicker/a$2;-><init>(Lcom/android/settings/localepicker/a;Lcom/android/settings/localepicker/LocaleDragCell;)V

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public final synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 8146
    iget-object p2, p0, Lcom/android/settings/localepicker/a;->e:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d01ac

    const/4 v1, 0x0

    .line 8147
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/localepicker/LocaleDragCell;

    .line 8148
    new-instance p2, Lcom/android/settings/localepicker/a$a;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/localepicker/a$a;-><init>(Lcom/android/settings/localepicker/a;Lcom/android/settings/localepicker/LocaleDragCell;)V

    return-object p2
.end method
