.class final Lcom/android/settings/applications/manageapplications/ManageApplications$a;
.super Lcom/android/settingslib/widget/settingsspinner/a;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/manageapplications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/widget/settingsspinner/a<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/android/settings/applications/manageapplications/ManageApplications;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/manageapplications/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/manageapplications/ManageApplications;)V
    .locals 1

    .line 910
    invoke-virtual {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settingslib/widget/settingsspinner/a;-><init>(Landroid/content/Context;)V

    .line 907
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$a;->c:Ljava/util/ArrayList;

    .line 911
    invoke-virtual {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$a;->b:Landroid/content/Context;

    .line 912
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$a;->a:Lcom/android/settings/applications/manageapplications/ManageApplications;

    return-void
.end method

.method private a(Z)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1002
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$a;->a:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->h:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1004
    :cond_0
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$a;->a:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->h:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1005
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$a;->a:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0, v0, v0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/android/settings/applications/manageapplications/a;
    .locals 1

    .line 916
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/manageapplications/a;

    return-object p1
.end method

.method public final a(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 921
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$a;->b(I)V

    return-void

    .line 923
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$a;->c(I)V

    return-void
.end method

.method public final b(I)V
    .locals 10

    .line 928
    invoke-static {}, Lcom/android/settings/applications/manageapplications/b;->a()Lcom/android/settings/applications/manageapplications/b;

    move-result-object v0

    .line 1220
    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/b;->a:[Lcom/android/settings/applications/manageapplications/a;

    aget-object p1, v0, p1

    .line 929
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 933
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Enabling filter "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$a;->b:Landroid/content/Context;

    .line 2045
    iget v2, p1, Lcom/android/settings/applications/manageapplications/a;->a:I

    .line 933
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ManageApplications"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 936
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$a;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 937
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v3, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$a;->a(Z)V

    .line 938
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$a;->a:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->b(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->notifyWrapperDataSetChanged()Z

    move-result v0

    if-nez v0, :cond_2

    .line 939
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$a;->notifyDataSetChanged()V

    .line 941
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 943
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Auto selecting filter "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$a;->b:Landroid/content/Context;

    .line 3045
    iget p1, p1, Lcom/android/settings/applications/manageapplications/a;->a:I

    .line 943
    invoke-virtual {v4, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$a;->a:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->c(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 947
    iget-object v4, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$a;->a:Lcom/android/settings/applications/manageapplications/ManageApplications;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/android/settings/applications/manageapplications/ManageApplications;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 949
    :cond_3
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$a;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v3, :cond_4

    .line 950
    invoke-static {}, Lcom/android/settings/applications/manageapplications/b;->a()Lcom/android/settings/applications/manageapplications/b;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$a;->a:Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 951
    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->d(Lcom/android/settings/applications/manageapplications/ManageApplications;)I

    move-result v0

    .line 3220
    iget-object p1, p1, Lcom/android/settings/applications/manageapplications/b;->a:[Lcom/android/settings/applications/manageapplications/a;

    aget-object p1, p1, v0

    .line 952
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 p1, -0x1

    if-eq v4, p1, :cond_4

    .line 954
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$a;->a:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->c(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 955
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$a;->a:Lcom/android/settings/applications/manageapplications/ManageApplications;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/settings/applications/manageapplications/ManageApplications;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_4
    return-void
.end method

.method public final c(I)V
    .locals 10

    .line 961
    invoke-static {}, Lcom/android/settings/applications/manageapplications/b;->a()Lcom/android/settings/applications/manageapplications/b;

    move-result-object v0

    .line 4220
    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/b;->a:[Lcom/android/settings/applications/manageapplications/a;

    aget-object p1, v0, p1

    .line 962
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 966
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Disabling filter "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$a;->b:Landroid/content/Context;

    .line 5045
    iget v2, p1, Lcom/android/settings/applications/manageapplications/a;->a:I

    .line 966
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ManageApplications"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$a;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 970
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-direct {p0, v2}, Lcom/android/settings/applications/manageapplications/ManageApplications$a;->a(Z)V

    .line 971
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$a;->a:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->b(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->notifyWrapperDataSetChanged()Z

    move-result v0

    if-nez v0, :cond_2

    .line 972
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$a;->notifyDataSetChanged()V

    .line 974
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$a;->a:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->a(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/android/settings/applications/manageapplications/a;

    move-result-object v0

    if-ne v0, p1, :cond_3

    .line 975
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$a;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 977
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Auto selecting filter "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$a;->c:Ljava/util/ArrayList;

    .line 978
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/manageapplications/a;

    .line 6045
    iget v2, v2, Lcom/android/settings/applications/manageapplications/a;->a:I

    .line 978
    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 977
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$a;->a:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->c(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 981
    iget-object v4, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$a;->a:Lcom/android/settings/applications/manageapplications/ManageApplications;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/android/settings/applications/manageapplications/ManageApplications;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_3
    return-void
.end method

.method public final getCount()I
    .locals 1

    .line 988
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 2

    .line 6993
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$a;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/manageapplications/a;

    .line 7045
    iget p1, p1, Lcom/android/settings/applications/manageapplications/a;->a:I

    .line 6993
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
