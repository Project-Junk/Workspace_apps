.class public final Lcom/android/settings/datausage/b;
.super Lcom/android/settingslib/widget/settingsspinner/a;
.source "CycleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/b$b;,
        Lcom/android/settings/datausage/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/widget/settingsspinner/a<",
        "Lcom/android/settings/datausage/b$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/android/settings/datausage/b$b;

.field private final b:Landroid/widget/AdapterView$OnItemSelectedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/datausage/b$b;Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/settingsspinner/a;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object p2, p0, Lcom/android/settings/datausage/b;->a:Lcom/android/settings/datausage/b$b;

    .line 43
    iput-object p3, p0, Lcom/android/settings/datausage/b;->b:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 44
    iget-object p1, p0, Lcom/android/settings/datausage/b;->a:Lcom/android/settings/datausage/b$b;

    invoke-interface {p1, p0}, Lcom/android/settings/datausage/b$b;->a(Lcom/android/settings/datausage/b;)V

    .line 45
    iget-object p1, p0, Lcom/android/settings/datausage/b;->a:Lcom/android/settings/datausage/b$b;

    iget-object p2, p0, Lcom/android/settings/datausage/b;->b:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {p1, p2}, Lcom/android/settings/datausage/b$b;->a(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method private a(Lcom/android/settings/datausage/b$a;)I
    .locals 2

    if-eqz p1, :cond_1

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/datausage/b;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 56
    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/b;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/b$a;

    .line 57
    invoke-virtual {v1, p1}, Lcom/android/settings/datausage/b$a;->a(Lcom/android/settings/datausage/b$a;)I

    move-result v1

    if-ltz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final a(Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/settingslib/net/d;",
            ">;)Z"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/android/settings/datausage/b;->a:Lcom/android/settings/datausage/b$b;

    .line 159
    invoke-interface {v0}, Lcom/android/settings/datausage/b$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/b$a;

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/datausage/b;->clear()V

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/datausage/b;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 163
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/net/d;

    .line 164
    new-instance v8, Lcom/android/settings/datausage/b$a;

    .line 1032
    iget-wide v3, v1, Lcom/android/settingslib/net/d;->c:J

    .line 1036
    iget-wide v5, v1, Lcom/android/settingslib/net/d;->d:J

    move-object v1, v8

    move-object v2, v7

    .line 164
    invoke-direct/range {v1 .. v6}, Lcom/android/settings/datausage/b$a;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {p0, v8}, Lcom/android/settings/datausage/b;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/b;->getCount()I

    move-result p1

    if-lez p1, :cond_1

    .line 169
    invoke-direct {p0, v0}, Lcom/android/settings/datausage/b;->a(Lcom/android/settings/datausage/b$a;)I

    move-result v4

    .line 170
    iget-object p1, p0, Lcom/android/settings/datausage/b;->a:Lcom/android/settings/datausage/b$b;

    invoke-interface {p1, v4}, Lcom/android/settings/datausage/b$b;->a(I)V

    .line 174
    invoke-virtual {p0, v4}, Lcom/android/settings/datausage/b;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datausage/b$a;

    .line 175
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 176
    iget-object v1, p0, Lcom/android/settings/datausage/b;->b:Landroid/widget/AdapterView$OnItemSelectedListener;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v5, 0x0

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
