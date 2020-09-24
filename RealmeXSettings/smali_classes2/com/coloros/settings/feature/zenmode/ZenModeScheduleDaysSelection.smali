.class public Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;
.super Landroid/widget/LinearLayout;
.source "ZenModeScheduleDaysSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection$a;
    }
.end annotation


# static fields
.field public static final a:[I

.field public static final b:[I

.field private static d:[I


# instance fields
.field protected c:Landroid/view/View;

.field private final e:Ljava/text/SimpleDateFormat;

.field private final f:Landroid/util/SparseBooleanArray;

.field private final g:Landroid/widget/LinearLayout;

.field private final h:Lcom/coloros/settings/widget/SettingsColorListView;

.field private i:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x7

    .line 49
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->a:[I

    .line 59
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->b:[I

    .line 69
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->d:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data

    :array_2
    .array-data 4
        0x7f1216b7
        0x7f1216a8
        0x7f1216bc
        0x7f1216be
        0x7f1216b9
        0x7f1216a6
        0x7f1216aa
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;[ILandroid/app/Dialog;)V
    .locals 5

    .line 99
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 82
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEEE"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->e:Ljava/text/SimpleDateFormat;

    .line 83
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->f:Landroid/util/SparseBooleanArray;

    .line 100
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->g:Landroid/widget/LinearLayout;

    .line 101
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->addView(Landroid/view/View;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move v2, v0

    .line 103
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_0

    .line 104
    iget-object v3, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->f:Landroid/util/SparseBooleanArray;

    aget v4, p2, v2

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    :cond_0
    iget-object p2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 111
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v2, 0x7f0d023e

    const/4 v3, 0x0

    .line 151
    invoke-virtual {p2, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->c:Landroid/view/View;

    .line 152
    iget-object p2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->c:Landroid/view/View;

    const v2, 0x7f0a01ce

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/coloros/settings/widget/SettingsColorListView;

    iput-object p2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->h:Lcom/coloros/settings/widget/SettingsColorListView;

    .line 155
    invoke-direct {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->getDayData()Ljava/util/ArrayList;

    move-result-object p2

    .line 156
    iget-object v2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->h:Lcom/coloros/settings/widget/SettingsColorListView;

    new-instance v3, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection$a;

    invoke-direct {v3, p0, p1, p2}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection$a;-><init>(Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lcom/coloros/settings/widget/SettingsColorListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 157
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->h:Lcom/coloros/settings/widget/SettingsColorListView;

    new-instance p2, Lcom/coloros/settings/feature/zenmode/-$$Lambda$ZenModeScheduleDaysSelection$qyVq_muYzZcllwnONURkJkrKezg;

    invoke-direct {p2, p0}, Lcom/coloros/settings/feature/zenmode/-$$Lambda$ZenModeScheduleDaysSelection$qyVq_muYzZcllwnONURkJkrKezg;-><init>(Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;)V

    invoke-virtual {p1, p2}, Lcom/coloros/settings/widget/SettingsColorListView;->setScrollMultiChoiceListener(Lcom/color/support/widget/ColorListView$ScrollMultiChoiceListener;)V

    .line 170
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->c:Landroid/view/View;

    const p2, 0x7f0a070a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcolor/support/v7/widget/Toolbar;

    const p2, 0x7f121b51

    .line 171
    invoke-virtual {p1, p2}, Lcolor/support/v7/widget/Toolbar;->setTitle(I)V

    const p2, 0x7f0803f7

    .line 172
    invoke-virtual {p1, p2}, Lcolor/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 174
    new-instance p2, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection$1;

    invoke-direct {p2, p0, p3}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection$1;-><init>(Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;Landroid/app/Dialog;)V

    invoke-virtual {p1, p2}, Lcolor/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->c:Landroid/view/View;

    const p2, 0x7f0a000b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcolor/support/design/widget/ColorAppBarLayout;

    .line 181
    invoke-virtual {p1}, Lcolor/support/design/widget/ColorAppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 182
    iget-object p3, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {p3, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/WindowManager;

    .line 183
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 184
    invoke-interface {p3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 185
    iget p3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 187
    iput p3, p2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->width:I

    .line 188
    invoke-virtual {p1, p2}, Lcolor/support/design/widget/ColorAppBarLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    iget-object p2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->h:Lcom/coloros/settings/widget/SettingsColorListView;

    invoke-virtual {p2, v1}, Lcom/coloros/settings/widget/SettingsColorListView;->setNestedScrollingEnabled(Z)V

    .line 191
    new-instance p2, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection$2;

    invoke-direct {p2, p0, p1}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection$2;-><init>(Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;Lcolor/support/design/widget/ColorAppBarLayout;)V

    invoke-virtual {p1, p2}, Lcolor/support/design/widget/ColorAppBarLayout;->post(Ljava/lang/Runnable;)Z

    .line 205
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->h:Lcom/coloros/settings/widget/SettingsColorListView;

    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/SettingsColorListView;->setFitsSystemWindows(Z)V

    .line 206
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->h:Lcom/coloros/settings/widget/SettingsColorListView;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/SettingsColorListView;->setClipToPadding(Z)V

    .line 207
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->h:Lcom/coloros/settings/widget/SettingsColorListView;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/SettingsColorListView;->setDividerHeight(I)V

    .line 210
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->c:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;)Landroid/view/View;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->i:Landroid/view/View;

    return-object p0
.end method

.method static synthetic a(Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->i:Landroid/view/View;

    return-object p1
.end method

.method private synthetic a(ILandroid/view/View;)V
    .locals 2

    .line 158
    sget-boolean v0, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->d:Z

    if-eqz v0, :cond_0

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onItemTouch_position = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", view = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZenModeScheduleDaysSelection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    sget-object v0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->a:[I

    aget p1, v0, p1

    const v0, 0x7f0a048f

    .line 162
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    .line 163
    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 164
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->f:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 165
    invoke-direct {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->getDays()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->a([I)V

    return-void
.end method

.method static synthetic a()[I
    .locals 1

    .line 48
    sget-object v0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->d:[I

    return-object v0
.end method

.method static synthetic b(Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;)Lcom/coloros/settings/widget/SettingsColorListView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->h:Lcom/coloros/settings/widget/SettingsColorListView;

    return-object p0
.end method

.method static synthetic c(Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->f:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static synthetic d(Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;)[I
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->getDays()[I

    move-result-object p0

    return-object p0
.end method

.method private getDayData()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x0

    .line 219
    :goto_0
    sget-object v3, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->a:[I

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 220
    aget v3, v3, v2

    const/4 v4, 0x7

    .line 221
    invoke-virtual {v1, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 222
    iget-object v3, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->e:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 224
    :cond_0
    sget-boolean v1, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->d:Z

    if-eqz v1, :cond_1

    .line 225
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getDayData_tempList = "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ZenModeScheduleDaysSelection"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method private getDays()[I
    .locals 5

    .line 232
    new-instance v0, Landroid/util/SparseBooleanArray;

    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->f:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    .line 233
    :goto_0
    iget-object v3, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->f:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 234
    iget-object v3, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->f:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 235
    iget-object v4, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->f:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 236
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 238
    :cond_1
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 239
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 240
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 242
    :cond_2
    invoke-static {v2}, Ljava/util/Arrays;->sort([I)V

    return-object v2
.end method

.method public static synthetic lambda$qyVq_muYzZcllwnONURkJkrKezg(Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->a(ILandroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected a([I)V
    .locals 0

    return-void
.end method
