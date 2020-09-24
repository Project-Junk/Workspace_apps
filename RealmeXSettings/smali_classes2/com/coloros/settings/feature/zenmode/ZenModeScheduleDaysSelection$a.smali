.class public final Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection$a;
.super Landroid/widget/BaseAdapter;
.source "ZenModeScheduleDaysSelection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/view/LayoutInflater;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 257
    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection$a;->a:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 258
    iput-object p2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection$a;->d:Landroid/content/Context;

    .line 259
    iput-object p3, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection$a;->b:Ljava/util/ArrayList;

    .line 260
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection$a;->c:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    .line 282
    iget-object p2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection$a;->c:Landroid/view/LayoutInflater;

    const v0, 0x7f0d0203

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 287
    :cond_0
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection$a;->getItem(I)Ljava/lang/Object;

    .line 288
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p3

    const v0, 0x7f0a07cf

    .line 289
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a048f

    .line 290
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 291
    sget-object v2, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->a:[I

    aget v2, v2, p1

    const/4 v3, 0x7

    .line 292
    invoke-virtual {p3, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 293
    invoke-static {}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->a()[I

    move-result-object p3

    aget p1, p3, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 294
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection$a;->a:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;

    invoke-static {p1}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->c(Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 295
    new-instance p1, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection$a$1;

    invoke-direct {p1, p0, v1, v2}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection$a$1;-><init>(Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection$a;Landroid/widget/CheckBox;I)V

    invoke-virtual {v1, p1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
