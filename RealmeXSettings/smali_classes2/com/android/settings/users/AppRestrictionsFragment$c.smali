.class final Lcom/android/settings/users/AppRestrictionsFragment$c;
.super Landroid/content/BroadcastReceiver;
.source "AppRestrictionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/AppRestrictionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/android/settings/users/AppRestrictionsFragment$b;

.field c:Z

.field final synthetic d:Lcom/android/settings/users/AppRestrictionsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/users/AppRestrictionsFragment;Ljava/lang/String;Lcom/android/settings/users/AppRestrictionsFragment$b;Z)V
    .locals 0

    .line 630
    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$c;->d:Lcom/android/settings/users/AppRestrictionsFragment;

    .line 631
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 632
    iput-object p2, p0, Lcom/android/settings/users/AppRestrictionsFragment$c;->a:Ljava/lang/String;

    .line 633
    iput-object p3, p0, Lcom/android/settings/users/AppRestrictionsFragment$c;->b:Lcom/android/settings/users/AppRestrictionsFragment$b;

    .line 634
    iput-boolean p4, p0, Lcom/android/settings/users/AppRestrictionsFragment$c;->c:Z

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 p1, 0x1

    .line 639
    invoke-virtual {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment$c;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "android.intent.extra.restrictions_list"

    .line 640
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "android.intent.extra.restrictions_intent"

    .line 642
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/content/Intent;

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 644
    iget-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$c;->d:Lcom/android/settings/users/AppRestrictionsFragment;

    iget-object p2, p0, Lcom/android/settings/users/AppRestrictionsFragment$c;->b:Lcom/android/settings/users/AppRestrictionsFragment$b;

    invoke-static {p1, p2, v0}, Lcom/android/settings/users/AppRestrictionsFragment;->a(Lcom/android/settings/users/AppRestrictionsFragment;Lcom/android/settings/users/AppRestrictionsFragment$b;Ljava/util/ArrayList;)V

    .line 645
    iget-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$c;->d:Lcom/android/settings/users/AppRestrictionsFragment;

    iget-boolean p1, p1, Lcom/android/settings/users/AppRestrictionsFragment;->e:Z

    if-eqz p1, :cond_4

    .line 646
    iget-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$c;->d:Lcom/android/settings/users/AppRestrictionsFragment;

    iget-object p1, p1, Lcom/android/settings/users/AppRestrictionsFragment;->b:Landroid/os/UserManager;

    iget-object p2, p0, Lcom/android/settings/users/AppRestrictionsFragment$c;->a:Ljava/lang/String;

    .line 647
    invoke-static {v0}, Landroid/content/RestrictionsManager;->convertRestrictionsToBundle(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment$c;->d:Lcom/android/settings/users/AppRestrictionsFragment;

    iget-object v1, v1, Lcom/android/settings/users/AppRestrictionsFragment;->d:Landroid/os/UserHandle;

    .line 646
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/UserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void

    :cond_0
    if-eqz p2, :cond_4

    .line 650
    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment$c;->b:Lcom/android/settings/users/AppRestrictionsFragment$b;

    .line 1152
    iput-object v0, v1, Lcom/android/settings/users/AppRestrictionsFragment$b;->a:Ljava/util/ArrayList;

    .line 651
    iget-boolean v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$c;->c:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$c;->d:Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-virtual {v0}, Lcom/android/settings/users/AppRestrictionsFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1663
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1667
    :cond_1
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$c;->d:Lcom/android/settings/users/AppRestrictionsFragment;

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->a:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    .line 1668
    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1669
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, p1, :cond_3

    .line 1673
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1674
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$c;->a:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 1675
    :cond_2
    new-instance p1, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Application "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not allowed to start activity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 653
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$c;->d:Lcom/android/settings/users/AppRestrictionsFragment;

    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$c;->b:Lcom/android/settings/users/AppRestrictionsFragment$b;

    invoke-static {p1, v0}, Lcom/android/settings/users/AppRestrictionsFragment;->a(Lcom/android/settings/users/AppRestrictionsFragment;Lcom/android/settings/users/AppRestrictionsFragment$b;)I

    move-result p1

    .line 655
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$c;->d:Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-virtual {v0, p2, p1}, Lcom/android/settings/users/AppRestrictionsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_4
    return-void
.end method
