.class public final Lcom/coloros/settings/feature/othersettings/timepower/a;
.super Landroid/widget/BaseAdapter;
.source "TimePowerRepeatAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/othersettings/timepower/a$a;
    }
.end annotation


# static fields
.field public static final a:[I

.field private static final c:[I

.field private static final d:[I

.field private static final e:[I

.field private static f:I


# instance fields
.field b:[Z

.field private g:Landroid/content/Context;

.field private h:Landroid/view/LayoutInflater;

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x7

    .line 27
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/coloros/settings/feature/othersettings/timepower/a;->c:[I

    .line 31
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/coloros/settings/feature/othersettings/timepower/a;->a:[I

    .line 41
    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/coloros/settings/feature/othersettings/timepower/a;->d:[I

    .line 51
    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/coloros/settings/feature/othersettings/timepower/a;->e:[I

    const/4 v0, 0x0

    .line 64
    sput v0, Lcom/coloros/settings/feature/othersettings/timepower/a;->f:I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f1216b7
        0x7f1216a8
        0x7f1216bc
        0x7f1216be
        0x7f1216b9
        0x7f1216a6
        0x7f1216aa
    .end array-data

    :array_1
    .array-data 4
        0x7f1216b7
        0x7f1216a8
        0x7f1216bc
        0x7f1216be
        0x7f1216b9
        0x7f1216a6
        0x7f1216aa
    .end array-data

    :array_2
    .array-data 4
        0x40
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
    .end array-data

    :array_3
    .array-data 4
        0x40
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 71
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x7

    .line 66
    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/a;->b:[Z

    .line 72
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/a;->g:Landroid/content/Context;

    .line 73
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/a;->h:Landroid/view/LayoutInflater;

    .line 74
    iput p2, p0, Lcom/coloros/settings/feature/othersettings/timepower/a;->i:I

    .line 1080
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result p1

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    .line 1081
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-eqz v0, :cond_0

    const-string v2, "bn_BD"

    .line 1082
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const-string v2, "pt_PT"

    .line 1084
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move p1, p2

    .line 1087
    :cond_1
    :goto_0
    sget v0, Lcom/coloros/settings/feature/othersettings/timepower/a;->f:I

    if-eq v0, p1, :cond_2

    .line 1088
    sput p1, Lcom/coloros/settings/feature/othersettings/timepower/a;->f:I

    .line 1089
    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/timepower/a;->a(I)V

    .line 1094
    :cond_2
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/a;->b:[Z

    sget-object v0, Lcom/coloros/settings/feature/othersettings/timepower/a;->e:[I

    const/4 v2, 0x0

    aget v0, v0, v2

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/othersettings/timepower/a;->b(I)Z

    move-result v0

    aput-boolean v0, p1, v2

    .line 1095
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/a;->b:[Z

    sget-object v0, Lcom/coloros/settings/feature/othersettings/timepower/a;->e:[I

    aget v0, v0, p2

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/othersettings/timepower/a;->b(I)Z

    move-result v0

    aput-boolean v0, p1, p2

    .line 1096
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/a;->b:[Z

    sget-object p2, Lcom/coloros/settings/feature/othersettings/timepower/a;->e:[I

    const/4 v0, 0x2

    aget p2, p2, v0

    invoke-direct {p0, p2}, Lcom/coloros/settings/feature/othersettings/timepower/a;->b(I)Z

    move-result p2

    aput-boolean p2, p1, v0

    .line 1097
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/a;->b:[Z

    sget-object p2, Lcom/coloros/settings/feature/othersettings/timepower/a;->e:[I

    const/4 v0, 0x3

    aget p2, p2, v0

    invoke-direct {p0, p2}, Lcom/coloros/settings/feature/othersettings/timepower/a;->b(I)Z

    move-result p2

    aput-boolean p2, p1, v0

    .line 1098
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/a;->b:[Z

    sget-object p2, Lcom/coloros/settings/feature/othersettings/timepower/a;->e:[I

    const/4 v0, 0x4

    aget p2, p2, v0

    invoke-direct {p0, p2}, Lcom/coloros/settings/feature/othersettings/timepower/a;->b(I)Z

    move-result p2

    aput-boolean p2, p1, v0

    .line 1099
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/a;->b:[Z

    sget-object p2, Lcom/coloros/settings/feature/othersettings/timepower/a;->e:[I

    aget p2, p2, v1

    invoke-direct {p0, p2}, Lcom/coloros/settings/feature/othersettings/timepower/a;->b(I)Z

    move-result p2

    aput-boolean p2, p1, v1

    .line 1100
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/a;->b:[Z

    sget-object p2, Lcom/coloros/settings/feature/othersettings/timepower/a;->e:[I

    const/4 v0, 0x6

    aget p2, p2, v0

    invoke-direct {p0, p2}, Lcom/coloros/settings/feature/othersettings/timepower/a;->b(I)Z

    move-result p2

    aput-boolean p2, p1, v0

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static a(Landroid/view/View;)Lcom/coloros/settings/feature/othersettings/timepower/a$a;
    .locals 0

    .line 184
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/settings/feature/othersettings/timepower/a$a;

    return-object p0
.end method

.method private static a(I)V
    .locals 5

    const/4 v0, 0x0

    move v1, p0

    move v2, v0

    .line 132
    :goto_0
    sget-object v3, Lcom/coloros/settings/feature/othersettings/timepower/a;->a:[I

    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 133
    sget-object v4, Lcom/coloros/settings/feature/othersettings/timepower/a;->c:[I

    aget v3, v3, v1

    aput v3, v4, v2

    .line 134
    sget-object v3, Lcom/coloros/settings/feature/othersettings/timepower/a;->e:[I

    sget-object v4, Lcom/coloros/settings/feature/othersettings/timepower/a;->d:[I

    aget v4, v4, v1

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v0, p0, :cond_1

    .line 139
    sget-object v1, Lcom/coloros/settings/feature/othersettings/timepower/a;->c:[I

    sget-object v3, Lcom/coloros/settings/feature/othersettings/timepower/a;->a:[I

    aget v3, v3, v0

    aput v3, v1, v2

    .line 140
    sget-object v1, Lcom/coloros/settings/feature/othersettings/timepower/a;->e:[I

    sget-object v3, Lcom/coloros/settings/feature/othersettings/timepower/a;->d:[I

    aget v3, v3, v0

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private b(I)Z
    .locals 1

    .line 146
    iget v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/a;->i:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final a()I
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/a;->b:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    .line 106
    sget-object v0, Lcom/coloros/settings/feature/othersettings/timepower/a;->e:[I

    aget v0, v0, v1

    or-int/2addr v1, v0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/a;->b:[Z

    const/4 v2, 0x1

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_1

    .line 109
    sget-object v0, Lcom/coloros/settings/feature/othersettings/timepower/a;->e:[I

    aget v0, v0, v2

    or-int/2addr v1, v0

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/a;->b:[Z

    const/4 v2, 0x2

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_2

    .line 112
    sget-object v0, Lcom/coloros/settings/feature/othersettings/timepower/a;->e:[I

    aget v0, v0, v2

    or-int/2addr v1, v0

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/a;->b:[Z

    const/4 v2, 0x3

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_3

    .line 115
    sget-object v0, Lcom/coloros/settings/feature/othersettings/timepower/a;->e:[I

    aget v0, v0, v2

    or-int/2addr v1, v0

    .line 117
    :cond_3
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/a;->b:[Z

    const/4 v2, 0x4

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_4

    .line 118
    sget-object v0, Lcom/coloros/settings/feature/othersettings/timepower/a;->e:[I

    aget v0, v0, v2

    or-int/2addr v1, v0

    .line 120
    :cond_4
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/a;->b:[Z

    const/4 v2, 0x5

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_5

    .line 121
    sget-object v0, Lcom/coloros/settings/feature/othersettings/timepower/a;->e:[I

    aget v0, v0, v2

    or-int/2addr v1, v0

    .line 123
    :cond_5
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/a;->b:[Z

    const/4 v2, 0x6

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_6

    .line 124
    sget-object v0, Lcom/coloros/settings/feature/othersettings/timepower/a;->e:[I

    aget v0, v0, v2

    or-int/2addr v1, v0

    :cond_6
    return v1
.end method

.method public final a(IZ)V
    .locals 1

    .line 158
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/timepower/a;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/a;->b:[Z

    aput-boolean p2, v0, p1

    .line 162
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/timepower/a;->notifyDataSetChanged()V

    return-void
.end method

.method public final getCount()I
    .locals 1

    .line 167
    sget-object v0, Lcom/coloros/settings/feature/othersettings/timepower/a;->c:[I

    array-length v0, v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 2

    .line 172
    sget-object v0, Lcom/coloros/settings/feature/othersettings/timepower/a;->c:[I

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 173
    aget p1, v0, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 192
    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/timepower/a;->h:Landroid/view/LayoutInflater;

    const v0, 0x7f0d0233

    invoke-virtual {p2, v0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1215
    new-instance p3, Lcom/coloros/settings/feature/othersettings/timepower/a$a;

    invoke-direct {p3}, Lcom/coloros/settings/feature/othersettings/timepower/a$a;-><init>()V

    const v0, 0x7f0a03a7

    .line 1216
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/coloros/settings/feature/othersettings/timepower/a$a;->a:Landroid/widget/TextView;

    const v0, 0x7f0a048f

    .line 1217
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p3, Lcom/coloros/settings/feature/othersettings/timepower/a$a;->b:Landroid/widget/CheckBox;

    .line 194
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 197
    instance-of v1, v0, Lcom/coloros/settings/feature/othersettings/timepower/a$a;

    if-eqz v1, :cond_1

    .line 198
    move-object p3, v0

    check-cast p3, Lcom/coloros/settings/feature/othersettings/timepower/a$a;

    .line 201
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/a;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/timepower/a;->getCount()I

    move-result v1

    if-eqz v0, :cond_6

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    const v0, 0x7f0a034b

    .line 1225
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-lez v1, :cond_6

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    if-eqz v0, :cond_6

    .line 1231
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    if-nez p1, :cond_4

    if-eqz v0, :cond_6

    .line 1236
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_4
    sub-int/2addr v1, v3

    if-ne p1, v1, :cond_5

    if-eqz v0, :cond_6

    .line 1241
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    .line 1246
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_1
    if-eqz p3, :cond_7

    .line 203
    iget-object v0, p3, Lcom/coloros/settings/feature/othersettings/timepower/a$a;->a:Landroid/widget/TextView;

    sget-object v1, Lcom/coloros/settings/feature/othersettings/timepower/a;->c:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 204
    iget-object p3, p3, Lcom/coloros/settings/feature/othersettings/timepower/a$a;->b:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/a;->b:[Z

    aget-boolean p1, v0, p1

    invoke-virtual {p3, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_7
    return-object p2
.end method
