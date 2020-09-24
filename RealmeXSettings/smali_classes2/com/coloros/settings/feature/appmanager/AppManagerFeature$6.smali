.class final Lcom/coloros/settings/feature/appmanager/AppManagerFeature$6;
.super Ljava/lang/Object;
.source "AppManagerFeature.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->getDefaultComparator(Ljava/util/Comparator;)Ljava/util/Comparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/coloros/settingslib/applications/ApplicationsState$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

.field private final b:Ljava/text/Collator;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;)V
    .locals 0

    .line 813
    iput-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$6;->a:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 814
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$6;->b:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .line 813
    check-cast p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;

    check-cast p2, Lcom/coloros/settingslib/applications/ApplicationsState$a;

    .line 1818
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$6;->b:Ljava/text/Collator;

    iget-object v1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->c:Ljava/lang/String;

    iget-object v2, p2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 1822
    :cond_0
    iget-object v0, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_2

    .line 1823
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$6;->b:Ljava/text/Collator;

    iget-object v1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1824
    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 1828
    :cond_1
    iget-object p1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object p2, p2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    sub-int/2addr p1, p2

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
