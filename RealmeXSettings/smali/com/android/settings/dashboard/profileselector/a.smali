.class public final Lcom/android/settings/dashboard/profileselector/a;
.super Ljava/lang/Object;
.source "UserAdapter.java"

# interfaces
.implements Landroid/widget/ListAdapter;
.implements Landroid/widget/SpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/profileselector/a$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/dashboard/profileselector/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/view/LayoutInflater;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/dashboard/profileselector/a$a;",
            ">;)V"
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p2, p0, Lcom/android/settings/dashboard/profileselector/a;->a:Ljava/util/ArrayList;

    const-string p2, "layout_inflater"

    .line 88
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/settings/dashboard/profileselector/a;->b:Landroid/view/LayoutInflater;

    return-void
.end method

.method public static a(Landroid/os/UserManager;Landroid/content/Context;)Lcom/android/settings/dashboard/profileselector/a;
    .locals 3

    .line 193
    invoke-virtual {p0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    .line 194
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 198
    :cond_0
    new-instance v1, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 200
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 201
    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 203
    invoke-static {p0, p1, v0}, Lcom/android/settings/dashboard/profileselector/a;->a(Landroid/os/UserManager;Landroid/content/Context;Ljava/util/List;)Lcom/android/settings/dashboard/profileselector/a;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/os/UserManager;Landroid/content/Context;Ljava/util/List;)Lcom/android/settings/dashboard/profileselector/a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserManager;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;)",
            "Lcom/android/settings/dashboard/profileselector/a;"
        }
    .end annotation

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 209
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 211
    new-instance v3, Lcom/android/settings/dashboard/profileselector/a$a;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    invoke-direct {v3, v4, p0, p1}, Lcom/android/settings/dashboard/profileselector/a$a;-><init>(Landroid/os/UserHandle;Landroid/os/UserManager;Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 213
    :cond_0
    new-instance p0, Lcom/android/settings/dashboard/profileselector/a;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/dashboard/profileselector/a;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-object p0
.end method


# virtual methods
.method public final areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final getCount()I
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/android/settings/dashboard/profileselector/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1119
    :cond_0
    iget-object p2, p0, Lcom/android/settings/dashboard/profileselector/a;->b:Landroid/view/LayoutInflater;

    const v0, 0x7f0d0390

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 102
    :goto_0
    iget-object p3, p0, Lcom/android/settings/dashboard/profileselector/a;->a:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/dashboard/profileselector/a$a;

    const p3, 0x1020006

    .line 103
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 2048
    iget-object v0, p1, Lcom/android/settings/dashboard/profileselector/a$a;->b:Landroid/graphics/drawable/Drawable;

    .line 103
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p3, 0x1020016

    .line 104
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 3048
    iget-object p1, p1, Lcom/android/settings/dashboard/profileselector/a$a;->a:Landroid/os/UserHandle;

    .line 2109
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    const/4 v0, -0x2

    if-eq p1, v0, :cond_2

    .line 2111
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    const p1, 0x7f1204b8

    goto :goto_2

    :cond_2
    :goto_1
    const p1, 0x7f1204b7

    .line 104
    :goto_2
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(I)V

    return-object p2
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .line 4139
    iget-object v0, p0, Lcom/android/settings/dashboard/profileselector/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/dashboard/profileselector/a$a;

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/android/settings/dashboard/profileselector/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/dashboard/profileselector/a$a;

    .line 4048
    iget-object p1, p1, Lcom/android/settings/dashboard/profileselector/a$a;->a:Landroid/os/UserHandle;

    .line 144
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 154
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/dashboard/profileselector/a;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final hasStableIds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/android/settings/dashboard/profileselector/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final isEnabled(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    return-void
.end method

.method public final unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    return-void
.end method
