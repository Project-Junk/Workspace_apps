.class public Lcom/android/settings/users/AppRestrictionsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AppRestrictionsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settingslib/p/a$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/users/AppRestrictionsFragment$c;,
        Lcom/android/settings/users/AppRestrictionsFragment$a;,
        Lcom/android/settings/users/AppRestrictionsFragment$b;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/String; = "AppRestrictionsFragment"


# instance fields
.field protected a:Landroid/content/pm/PackageManager;

.field protected b:Landroid/os/UserManager;

.field protected c:Landroid/content/pm/IPackageManager;

.field protected d:Landroid/os/UserHandle;

.field protected e:Z

.field private g:Landroid/content/pm/PackageInfo;

.field private h:Lcom/android/settingslib/p/a;

.field private i:Landroidx/preference/PreferenceGroup;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:I

.field private n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/settings/users/AppRestrictionsFragment$b;",
            ">;"
        }
    .end annotation
.end field

.field private o:Landroid/os/AsyncTask;

.field private p:Landroid/content/BroadcastReceiver;

.field private q:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->j:Z

    const/16 v0, 0x3e8

    .line 106
    iput v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->m:I

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->n:Ljava/util/HashMap;

    .line 112
    new-instance v0, Lcom/android/settings/users/AppRestrictionsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/users/AppRestrictionsFragment$1;-><init>(Lcom/android/settings/users/AppRestrictionsFragment;)V

    iput-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->p:Landroid/content/BroadcastReceiver;

    .line 126
    new-instance v0, Lcom/android/settings/users/AppRestrictionsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/users/AppRestrictionsFragment$2;-><init>(Lcom/android/settings/users/AppRestrictionsFragment;)V

    iput-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->q:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/users/AppRestrictionsFragment;Lcom/android/settings/users/AppRestrictionsFragment$b;)I
    .locals 2

    .line 13751
    iget v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->m:I

    .line 13752
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->n:Ljava/util/HashMap;

    iget v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->m:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13753
    iget p0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->m:I

    return p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 70
    sget-object v0, Lcom/android/settings/users/AppRestrictionsFragment;->f:Ljava/lang/String;

    return-object v0
.end method

.method private static a([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 787
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 788
    aget-object v1, p1, v0

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 789
    aget-object p0, p0, v0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method private a(Lcom/android/settings/users/AppRestrictionsFragment$b;)V
    .locals 3

    .line 584
    invoke-static {p1}, Lcom/android/settings/users/AppRestrictionsFragment$b;->d(Lcom/android/settings/users/AppRestrictionsFragment$b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    .line 585
    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->i:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 587
    :cond_0
    invoke-static {p1}, Lcom/android/settings/users/AppRestrictionsFragment$b;->d(Lcom/android/settings/users/AppRestrictionsFragment$b;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/users/AppRestrictionsFragment;Landroid/content/Intent;)V
    .locals 1

    .line 5296
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 5297
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 5300
    invoke-static {p1}, Lcom/android/settings/users/AppRestrictionsFragment;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/android/settings/users/AppRestrictionsFragment$b;

    if-eqz p0, :cond_2

    const-string p1, "android.intent.action.PACKAGE_ADDED"

    .line 5303
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment$b;->isChecked()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, "android.intent.action.PACKAGE_REMOVED"

    .line 5304
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment$b;->isChecked()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    .line 5305
    invoke-virtual {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment$b;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/android/settings/users/AppRestrictionsFragment;Lcom/android/settings/users/AppRestrictionsFragment$b;Ljava/util/ArrayList;)V
    .locals 9

    .line 12684
    invoke-direct {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment;->a(Lcom/android/settings/users/AppRestrictionsFragment$b;)V

    .line 12687
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/RestrictionEntry;

    const/4 v4, 0x0

    .line 12689
    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getType()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v1, :cond_4

    const/4 v7, 0x2

    if-eq v5, v7, :cond_2

    const/4 v7, 0x3

    if-eq v5, v7, :cond_2

    if-eq v5, v6, :cond_1

    goto/16 :goto_1

    .line 12712
    :cond_1
    new-instance v4, Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/preference/MultiSelectListPreference;-><init>(Landroid/content/Context;)V

    .line 12713
    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 12714
    move-object v5, v4

    check-cast v5, Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getChoiceValues()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroidx/preference/MultiSelectListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 12715
    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getChoiceEntries()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroidx/preference/MultiSelectListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 12716
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 12717
    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getAllSelectedStrings()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 12718
    invoke-virtual {v5, v7}, Landroidx/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 12719
    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroidx/preference/MultiSelectListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 12698
    :cond_2
    new-instance v4, Landroidx/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 12699
    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 12700
    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getSelectedString()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    .line 12702
    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getDescription()Ljava/lang/String;

    move-result-object v5

    .line 12704
    :cond_3
    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getChoiceEntries()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getChoiceValues()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v5}, Lcom/android/settings/users/AppRestrictionsFragment;->a([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 12706
    move-object v7, v4

    check-cast v7, Landroidx/preference/ListPreference;

    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getChoiceValues()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 12707
    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getChoiceEntries()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 12708
    invoke-virtual {v7, v5}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 12709
    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroidx/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 12691
    :cond_4
    new-instance v4, Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 12692
    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 12693
    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 12694
    move-object v5, v4

    check-cast v5, Landroidx/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getSelectedState()Z

    move-result v7

    invoke-virtual {v5, v7}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    :goto_1
    if-eqz v4, :cond_0

    const/4 v5, 0x0

    .line 12725
    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 12726
    invoke-virtual {p1}, Lcom/android/settings/users/AppRestrictionsFragment$b;->getOrder()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setOrder(I)V

    .line 12728
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/settings/users/AppRestrictionsFragment$b;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12729
    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 12728
    invoke-virtual {v4, v3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 12730
    iget-object v3, p0, Lcom/android/settings/users/AppRestrictionsFragment;->i:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 12731
    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const v3, 0x7f08053b

    .line 12732
    invoke-virtual {v4, v3}, Landroidx/preference/Preference;->setIcon(I)V

    .line 12733
    invoke-static {p1}, Lcom/android/settings/users/AppRestrictionsFragment$b;->d(Lcom/android/settings/users/AppRestrictionsFragment$b;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 13152
    :cond_5
    iput-object p2, p1, Lcom/android/settings/users/AppRestrictionsFragment$b;->a:Ljava/util/ArrayList;

    if-ne v2, v1, :cond_6

    .line 13160
    iget-boolean p2, p1, Lcom/android/settings/users/AppRestrictionsFragment$b;->c:Z

    if-eqz p2, :cond_6

    .line 12740
    invoke-virtual {p1}, Lcom/android/settings/users/AppRestrictionsFragment$b;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 12742
    iget-object p0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->i:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_6
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/android/settings/users/AppRestrictionsFragment$b;Z)V
    .locals 9

    .line 611
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->b:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->d:Landroid/os/UserHandle;

    .line 612
    invoke-virtual {v0, p1, v1}, Landroid/os/UserManager;->getApplicationRestrictions(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object v0

    .line 613
    new-instance v2, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_RESTRICTION_ENTRIES"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 614
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.restrictions_bundle"

    .line 615
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 v0, 0x20

    .line 616
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 617
    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v4, Lcom/android/settings/users/AppRestrictionsFragment$c;

    invoke-direct {v4, p0, p1, p2, p3}, Lcom/android/settings/users/AppRestrictionsFragment$c;-><init>(Lcom/android/settings/users/AppRestrictionsFragment;Ljava/lang/String;Lcom/android/settings/users/AppRestrictionsFragment$b;Z)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroidx/fragment/app/FragmentActivity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 3

    const/4 v0, 0x0

    .line 486
    :goto_0
    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->i:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 487
    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->i:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    .line 488
    instance-of v2, v1, Lcom/android/settings/users/AppRestrictionsFragment$b;

    if-eqz v2, :cond_0

    .line 489
    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 490
    check-cast v1, Lcom/android/settings/users/AppRestrictionsFragment$b;

    invoke-virtual {v1, p2}, Lcom/android/settings/users/AppRestrictionsFragment$b;->setChecked(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/android/settings/users/AppRestrictionsFragment;)Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->l:Z

    return p0
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 477
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 478
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic b(Lcom/android/settings/users/AppRestrictionsFragment;)Lcom/android/settingslib/p/a;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->h:Lcom/android/settingslib/p/a;

    return-object p0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 473
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "pkg_"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/android/settings/users/AppRestrictionsFragment;)V
    .locals 16

    move-object/from16 v0, p0

    .line 5351
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 5353
    iget-object v2, v0, Lcom/android/settings/users/AppRestrictionsFragment;->a:Landroid/content/pm/PackageManager;

    .line 5354
    iget-object v3, v0, Lcom/android/settings/users/AppRestrictionsFragment;->c:Landroid/content/pm/IPackageManager;

    .line 5355
    iget-object v4, v0, Lcom/android/settings/users/AppRestrictionsFragment;->d:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 5358
    iget-object v5, v0, Lcom/android/settings/users/AppRestrictionsFragment;->b:Landroid/os/UserManager;

    iget-object v6, v0, Lcom/android/settings/users/AppRestrictionsFragment;->d:Landroid/os/UserHandle;

    invoke-static {v5, v6}, Lcom/android/settings/m;->a(Landroid/os/UserManager;Landroid/os/UserHandle;)Landroid/content/pm/UserInfo;

    move-result-object v5

    if-eqz v5, :cond_10

    .line 5361
    iget-object v5, v0, Lcom/android/settings/users/AppRestrictionsFragment;->i:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v5}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 5362
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.GET_RESTRICTION_ENTRIES"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 5363
    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 5364
    iget-object v5, v0, Lcom/android/settings/users/AppRestrictionsFragment;->h:Lcom/android/settingslib/p/a;

    .line 6094
    iget-object v5, v5, Lcom/android/settingslib/p/a;->g:Ljava/util/List;

    .line 5364
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/p/a$d;

    .line 5365
    iget-object v9, v7, Lcom/android/settingslib/p/a$d;->a:Ljava/lang/String;

    if-eqz v9, :cond_0

    .line 5367
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 5368
    new-instance v11, Lcom/android/settings/users/AppRestrictionsFragment$b;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12, v0}, Lcom/android/settings/users/AppRestrictionsFragment$b;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    .line 5369
    invoke-static {v2, v9}, Lcom/android/settings/users/AppRestrictionsFragment;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v12

    const/16 v13, 0x64

    if-eqz v10, :cond_1

    .line 6456
    iget-object v7, v7, Lcom/android/settingslib/p/a$d;->a:Ljava/lang/String;

    const v10, 0x7f080801

    .line 6457
    invoke-virtual {v11, v10}, Lcom/android/settings/users/AppRestrictionsFragment$b;->setIcon(I)V

    .line 6458
    invoke-static {v7}, Lcom/android/settings/users/AppRestrictionsFragment;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Lcom/android/settings/users/AppRestrictionsFragment$b;->setKey(Ljava/lang/String;)V

    .line 6460
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    iget-object v10, v0, Lcom/android/settings/users/AppRestrictionsFragment;->d:Landroid/os/UserHandle;

    .line 6459
    invoke-static {v7, v10}, Lcom/android/settings/users/e;->a(Landroid/content/Context;Landroid/os/UserHandle;)Ljava/util/ArrayList;

    move-result-object v7

    .line 6461
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/RestrictionEntry;

    .line 6462
    invoke-virtual {v10}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/settings/users/AppRestrictionsFragment$b;->setTitle(Ljava/lang/CharSequence;)V

    .line 7152
    iput-object v7, v11, Lcom/android/settings/users/AppRestrictionsFragment$b;->a:Ljava/util/ArrayList;

    .line 6464
    invoke-virtual {v10}, Landroid/content/RestrictionEntry;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Lcom/android/settings/users/AppRestrictionsFragment$b;->setSummary(Ljava/lang/CharSequence;)V

    .line 6465
    invoke-virtual {v10}, Landroid/content/RestrictionEntry;->getSelectedState()Z

    move-result v7

    invoke-virtual {v11, v7}, Lcom/android/settings/users/AppRestrictionsFragment$b;->setChecked(Z)V

    .line 6466
    invoke-virtual {v11, v6}, Lcom/android/settings/users/AppRestrictionsFragment$b;->setPersistent(Z)V

    .line 6467
    invoke-virtual {v11, v0}, Lcom/android/settings/users/AppRestrictionsFragment$b;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 6468
    invoke-virtual {v11, v13}, Lcom/android/settings/users/AppRestrictionsFragment$b;->setOrder(I)V

    .line 6469
    iget-object v7, v0, Lcom/android/settings/users/AppRestrictionsFragment;->i:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v7, v11}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 5373
    iget-object v7, v0, Lcom/android/settings/users/AppRestrictionsFragment;->h:Lcom/android/settingslib/p/a;

    invoke-virtual {v7, v9, v8}, Lcom/android/settingslib/p/a;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const v10, 0x400040

    const/4 v14, 0x0

    .line 5378
    :try_start_0
    invoke-interface {v3, v9, v10, v4}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v10
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v10, v14

    :goto_1
    if-eqz v10, :cond_0

    .line 5387
    iget-boolean v15, v0, Lcom/android/settings/users/AppRestrictionsFragment;->e:Z

    if-eqz v15, :cond_3

    .line 7451
    iget-object v15, v10, Landroid/content/pm/PackageInfo;->requiredAccountType:Ljava/lang/String;

    if-eqz v15, :cond_2

    iget-object v15, v10, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    if-nez v15, :cond_2

    move v15, v8

    goto :goto_2

    :cond_2
    move v15, v6

    :goto_2
    if-nez v15, :cond_0

    .line 5390
    :cond_3
    iget-object v15, v7, Lcom/android/settingslib/p/a$d;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_4

    iget-object v15, v7, Lcom/android/settingslib/p/a$d;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    goto :goto_3

    :cond_4
    move-object v15, v14

    :goto_3
    invoke-virtual {v11, v15}, Lcom/android/settings/users/AppRestrictionsFragment$b;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 5391
    invoke-virtual {v11, v6}, Lcom/android/settings/users/AppRestrictionsFragment$b;->setChecked(Z)V

    .line 5392
    iget-object v15, v7, Lcom/android/settingslib/p/a$d;->c:Ljava/lang/CharSequence;

    invoke-virtual {v11, v15}, Lcom/android/settings/users/AppRestrictionsFragment$b;->setTitle(Ljava/lang/CharSequence;)V

    .line 5393
    invoke-static {v9}, Lcom/android/settings/users/AppRestrictionsFragment;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Lcom/android/settings/users/AppRestrictionsFragment$b;->setKey(Ljava/lang/String;)V

    if-eqz v12, :cond_5

    .line 5394
    iget-object v15, v7, Lcom/android/settingslib/p/a$d;->e:Lcom/android/settingslib/p/a$d;

    if-nez v15, :cond_5

    move v15, v8

    goto :goto_4

    :cond_5
    move v15, v6

    :goto_4
    invoke-static {v11, v15}, Lcom/android/settings/users/AppRestrictionsFragment$b;->a(Lcom/android/settings/users/AppRestrictionsFragment$b;Z)V

    .line 5395
    invoke-virtual {v11, v6}, Lcom/android/settings/users/AppRestrictionsFragment$b;->setPersistent(Z)V

    .line 5396
    invoke-virtual {v11, v0}, Lcom/android/settings/users/AppRestrictionsFragment$b;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 5397
    invoke-virtual {v11, v0}, Lcom/android/settings/users/AppRestrictionsFragment$b;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 8437
    iget-object v15, v7, Lcom/android/settingslib/p/a$d;->e:Lcom/android/settingslib/p/a$d;

    if-eqz v15, :cond_7

    .line 8438
    iget-boolean v14, v0, Lcom/android/settings/users/AppRestrictionsFragment;->e:Z

    if-eqz v14, :cond_6

    iget-object v14, v10, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    if-eqz v14, :cond_6

    const v14, 0x7f1201f2

    .line 8439
    new-array v15, v8, [Ljava/lang/Object;

    iget-object v13, v7, Lcom/android/settingslib/p/a$d;->e:Lcom/android/settingslib/p/a$d;

    iget-object v13, v13, Lcom/android/settingslib/p/a$d;->c:Ljava/lang/CharSequence;

    aput-object v13, v15, v6

    invoke-virtual {v0, v14, v15}, Lcom/android/settings/users/AppRestrictionsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto :goto_5

    :cond_6
    const v13, 0x7f121847

    .line 8442
    new-array v14, v8, [Ljava/lang/Object;

    iget-object v15, v7, Lcom/android/settingslib/p/a$d;->e:Lcom/android/settingslib/p/a$d;

    iget-object v15, v15, Lcom/android/settingslib/p/a$d;->c:Ljava/lang/CharSequence;

    aput-object v15, v14, v6

    invoke-virtual {v0, v13, v14}, Lcom/android/settings/users/AppRestrictionsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto :goto_5

    .line 8444
    :cond_7
    iget-object v13, v10, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    if-eqz v13, :cond_8

    const v13, 0x7f1201f1

    .line 8445
    invoke-virtual {v0, v13}, Lcom/android/settings/users/AppRestrictionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 5398
    :cond_8
    :goto_5
    invoke-virtual {v11, v14}, Lcom/android/settings/users/AppRestrictionsFragment$b;->setSummary(Ljava/lang/CharSequence;)V

    .line 5399
    iget-boolean v13, v10, Landroid/content/pm/PackageInfo;->requiredForAllUsers:Z

    if-nez v13, :cond_c

    if-eqz v10, :cond_9

    .line 9337
    iget-object v13, v10, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v13, :cond_9

    iget-object v13, v0, Lcom/android/settings/users/AppRestrictionsFragment;->g:Landroid/content/pm/PackageInfo;

    iget-object v13, v13, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v13, v13, v6

    iget-object v14, v10, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v14, v14, v6

    .line 9338
    invoke-virtual {v13, v14}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    move v13, v8

    goto :goto_6

    :cond_9
    move v13, v6

    :goto_6
    if-eqz v13, :cond_a

    goto :goto_8

    .line 5411
    :cond_a
    iget-boolean v12, v0, Lcom/android/settings/users/AppRestrictionsFragment;->k:Z

    if-nez v12, :cond_d

    if-eqz v10, :cond_b

    .line 10343
    iget-object v12, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 10344
    iget-object v10, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v13, 0x800000

    and-int/2addr v12, v13

    if-eqz v12, :cond_b

    and-int/2addr v10, v8

    if-nez v10, :cond_b

    move v10, v8

    goto :goto_7

    :cond_b
    move v10, v6

    :goto_7
    if-eqz v10, :cond_d

    .line 5412
    invoke-virtual {v11, v8}, Lcom/android/settings/users/AppRestrictionsFragment$b;->setChecked(Z)V

    goto :goto_9

    .line 5400
    :cond_c
    :goto_8
    invoke-virtual {v11, v8}, Lcom/android/settings/users/AppRestrictionsFragment$b;->setChecked(Z)V

    .line 10156
    iput-boolean v8, v11, Lcom/android/settings/users/AppRestrictionsFragment$b;->c:Z

    if-eqz v12, :cond_0

    .line 5408
    iget-object v10, v7, Lcom/android/settingslib/p/a$d;->e:Lcom/android/settingslib/p/a$d;

    if-nez v10, :cond_d

    .line 5409
    invoke-direct {v0, v9, v11, v6}, Lcom/android/settings/users/AppRestrictionsFragment;->a(Ljava/lang/String;Lcom/android/settings/users/AppRestrictionsFragment$b;Z)V

    .line 5414
    :cond_d
    :goto_9
    iget-object v7, v7, Lcom/android/settingslib/p/a$d;->e:Lcom/android/settingslib/p/a$d;

    if-eqz v7, :cond_e

    .line 11156
    iput-boolean v8, v11, Lcom/android/settings/users/AppRestrictionsFragment$b;->c:Z

    .line 5416
    iget-object v7, v0, Lcom/android/settings/users/AppRestrictionsFragment;->h:Lcom/android/settingslib/p/a;

    .line 12086
    iget-object v7, v7, Lcom/android/settingslib/p/a;->f:Ljava/util/HashMap;

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 5416
    invoke-virtual {v11, v7}, Lcom/android/settings/users/AppRestrictionsFragment$b;->setChecked(Z)V

    .line 5418
    :cond_e
    iget-object v7, v0, Lcom/android/settings/users/AppRestrictionsFragment;->i:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v7}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    const/16 v8, 0x64

    mul-int/2addr v7, v8

    invoke-virtual {v11, v7}, Lcom/android/settings/users/AppRestrictionsFragment$b;->setOrder(I)V

    .line 5419
    iget-object v7, v0, Lcom/android/settings/users/AppRestrictionsFragment;->h:Lcom/android/settingslib/p/a;

    invoke-virtual {v11}, Lcom/android/settings/users/AppRestrictionsFragment$b;->isChecked()Z

    move-result v8

    invoke-virtual {v7, v9, v8}, Lcom/android/settingslib/p/a;->a(Ljava/lang/String;Z)V

    .line 5420
    iget-object v7, v0, Lcom/android/settings/users/AppRestrictionsFragment;->i:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v7, v11}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_0

    .line 5422
    :cond_f
    iput-boolean v8, v0, Lcom/android/settings/users/AppRestrictionsFragment;->l:Z

    .line 5425
    iget-boolean v1, v0, Lcom/android/settings/users/AppRestrictionsFragment;->k:Z

    if-eqz v1, :cond_10

    iget-boolean v1, v0, Lcom/android/settings/users/AppRestrictionsFragment;->j:Z

    if-eqz v1, :cond_10

    .line 5426
    iput-boolean v6, v0, Lcom/android/settings/users/AppRestrictionsFragment;->j:Z

    .line 5427
    iget-object v1, v0, Lcom/android/settings/users/AppRestrictionsFragment;->h:Lcom/android/settingslib/p/a;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/p/a;->a(Lcom/android/settingslib/p/a$c;)V

    :cond_10
    return-void
.end method


# virtual methods
.method protected final a(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "user_id"

    if-eqz p1, :cond_0

    .line 218
    new-instance v2, Landroid/os/UserHandle;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->d:Landroid/os/UserHandle;

    goto :goto_0

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 222
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    new-instance v2, Landroid/os/UserHandle;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v2, v1}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->d:Landroid/os/UserHandle;

    :cond_1
    const-string v1, "new_user"

    .line 225
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->k:Z

    .line 229
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->d:Landroid/os/UserHandle;

    if-nez p1, :cond_3

    .line 230
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->d:Landroid/os/UserHandle;

    .line 233
    :cond_3
    new-instance p1, Lcom/android/settingslib/p/a;

    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->d:Landroid/os/UserHandle;

    invoke-direct {p1, v1, v2}, Lcom/android/settingslib/p/a;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->h:Lcom/android/settingslib/p/a;

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->a:Landroid/content/pm/PackageManager;

    const-string p1, "package"

    .line 235
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->c:Landroid/content/pm/IPackageManager;

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v1, "user"

    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->b:Landroid/os/UserManager;

    .line 237
    iget-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->b:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->d:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->e:Z

    .line 239
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->a:Landroid/content/pm/PackageManager;

    const-string v1, "android"

    const/16 v2, 0x40

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->g:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const p1, 0x7f15001e

    .line 244
    invoke-virtual {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment;->addPreferencesFromResource(I)V

    .line 1310
    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    .line 245
    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->i:Landroidx/preference/PreferenceGroup;

    .line 246
    iget-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->i:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 316
    invoke-static {p1}, Lcom/android/settings/users/AppRestrictionsFragment;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 315
    invoke-virtual {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/users/AppRestrictionsFragment$b;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 318
    invoke-virtual {p1, v0}, Lcom/android/settings/users/AppRestrictionsFragment$b;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x61

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 758
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 760
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->n:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/users/AppRestrictionsFragment$b;

    if-nez v0, :cond_0

    .line 762
    sget-object p2, Lcom/android/settings/users/AppRestrictionsFragment;->f:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "Unknown requestCode "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    .line 767
    invoke-virtual {v0}, Lcom/android/settings/users/AppRestrictionsFragment$b;->getKey()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "android.intent.extra.restrictions_list"

    .line 769
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "android.intent.extra.restrictions_bundle"

    .line 770
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p3

    if-eqz v1, :cond_1

    .line 5152
    iput-object v1, v0, Lcom/android/settings/users/AppRestrictionsFragment$b;->a:Ljava/util/ArrayList;

    .line 774
    iget-object p3, p0, Lcom/android/settings/users/AppRestrictionsFragment;->b:Landroid/os/UserManager;

    .line 775
    invoke-static {v1}, Landroid/content/RestrictionsManager;->convertRestrictionsToBundle(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->d:Landroid/os/UserHandle;

    .line 774
    invoke-virtual {p3, p2, v0, v1}, Landroid/os/UserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 778
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->b:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->d:Landroid/os/UserHandle;

    invoke-virtual {v0, p2, p3, v1}, Landroid/os/UserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 782
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->n:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 498
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/users/AppRestrictionsFragment$b;

    if-eqz v0, :cond_8

    .line 499
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/users/AppRestrictionsFragment$b;

    .line 500
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0a00a2

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-ne v1, v2, :cond_2

    .line 1591
    invoke-virtual {v0}, Lcom/android/settings/users/AppRestrictionsFragment$b;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "pkg_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2168
    iget-boolean p1, v0, Lcom/android/settings/users/AppRestrictionsFragment$b;->b:Z

    if-eqz p1, :cond_0

    .line 1593
    invoke-direct {p0, v0}, Lcom/android/settings/users/AppRestrictionsFragment;->a(Lcom/android/settings/users/AppRestrictionsFragment$b;)V

    goto :goto_0

    .line 1595
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/users/AppRestrictionsFragment$b;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1596
    invoke-direct {p0, p1, v0, v4}, Lcom/android/settings/users/AppRestrictionsFragment;->a(Ljava/lang/String;Lcom/android/settings/users/AppRestrictionsFragment$b;Z)V

    .line 3168
    :goto_0
    iget-boolean p1, v0, Lcom/android/settings/users/AppRestrictionsFragment$b;->b:Z

    xor-int/2addr p1, v4

    .line 3172
    iput-boolean p1, v0, Lcom/android/settings/users/AppRestrictionsFragment$b;->b:Z

    :cond_1
    return-void

    .line 4160
    :cond_2
    iget-boolean v1, v0, Lcom/android/settings/users/AppRestrictionsFragment$b;->c:Z

    if-nez v1, :cond_8

    .line 504
    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 505
    sget-object v0, Lcom/android/settings/users/AppRestrictionsFragment;->f:Ljava/lang/String;

    const-string v1, "Recyclerview is still computing a layout or scrolling, cann\'t change the preference state"

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    instance-of v0, p1, Landroid/widget/CompoundButton;

    if-eqz v0, :cond_3

    .line 507
    check-cast p1, Landroid/widget/CompoundButton;

    .line 508
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v4

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_3
    return-void

    .line 513
    :cond_4
    invoke-virtual {v0}, Lcom/android/settings/users/AppRestrictionsFragment$b;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v4

    invoke-virtual {v0, p1}, Lcom/android/settings/users/AppRestrictionsFragment$b;->setChecked(Z)V

    .line 514
    invoke-virtual {v0}, Lcom/android/settings/users/AppRestrictionsFragment$b;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 516
    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 517
    invoke-static {v0}, Lcom/android/settings/users/AppRestrictionsFragment$b;->b(Lcom/android/settings/users/AppRestrictionsFragment$b;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/RestrictionEntry;

    invoke-virtual {v0}, Lcom/android/settings/users/AppRestrictionsFragment$b;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/RestrictionEntry;->setSelectedState(Z)V

    .line 518
    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {v0}, Lcom/android/settings/users/AppRestrictionsFragment$b;->b(Lcom/android/settings/users/AppRestrictionsFragment$b;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->d:Landroid/os/UserHandle;

    invoke-static {p1, v0, v1}, Lcom/android/settings/users/e;->a(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/UserHandle;)V

    return-void

    .line 521
    :cond_5
    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->h:Lcom/android/settingslib/p/a;

    invoke-virtual {v0}, Lcom/android/settings/users/AppRestrictionsFragment$b;->isChecked()Z

    move-result v3

    invoke-virtual {v1, p1, v3}, Lcom/android/settingslib/p/a;->a(Ljava/lang/String;Z)V

    .line 522
    invoke-virtual {v0}, Lcom/android/settings/users/AppRestrictionsFragment$b;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v0}, Lcom/android/settings/users/AppRestrictionsFragment$b;->c(Lcom/android/settings/users/AppRestrictionsFragment$b;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 523
    invoke-static {v0}, Lcom/android/settings/users/AppRestrictionsFragment$b;->b(Lcom/android/settings/users/AppRestrictionsFragment$b;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_6

    .line 525
    invoke-direct {p0, p1, v0, v2}, Lcom/android/settings/users/AppRestrictionsFragment;->a(Ljava/lang/String;Lcom/android/settings/users/AppRestrictionsFragment$b;Z)V

    .line 527
    :cond_6
    iput-boolean v4, p0, Lcom/android/settings/users/AppRestrictionsFragment;->l:Z

    .line 529
    iget-boolean v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->e:Z

    if-nez v1, :cond_7

    .line 530
    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->h:Lcom/android/settingslib/p/a;

    invoke-virtual {v0}, Lcom/android/settings/users/AppRestrictionsFragment$b;->isChecked()Z

    move-result v2

    invoke-virtual {v1, p1, v2, p0}, Lcom/android/settingslib/p/a;->a(Ljava/lang/String;ZLcom/android/settingslib/p/a$c;)V

    .line 532
    :cond_7
    invoke-virtual {v0}, Lcom/android/settings/users/AppRestrictionsFragment$b;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/android/settings/users/AppRestrictionsFragment$b;->isChecked()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/users/AppRestrictionsFragment;->a(Ljava/lang/String;Z)V

    :cond_8
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 280
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    const/4 v0, 0x0

    .line 281
    iput-boolean v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->k:Z

    .line 282
    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 283
    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->q:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 284
    iget-boolean v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->l:Z

    if-eqz v1, :cond_0

    .line 285
    new-instance v1, Lcom/android/settings/users/AppRestrictionsFragment$3;

    invoke-direct {v1, p0}, Lcom/android/settings/users/AppRestrictionsFragment$3;-><init>(Lcom/android/settings/users/AppRestrictionsFragment;)V

    new-array v0, v0, [Ljava/lang/Void;

    .line 291
    invoke-virtual {v1, v0}, Lcom/android/settings/users/AppRestrictionsFragment$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    .line 539
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, ";"

    .line 540
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 541
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 543
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 544
    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->i:Landroidx/preference/PreferenceGroup;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pkg_"

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 545
    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/users/AppRestrictionsFragment$b;

    .line 4164
    iget-object v2, v2, Lcom/android/settings/users/AppRestrictionsFragment$b;->a:Ljava/util/ArrayList;

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    .line 548
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/RestrictionEntry;

    .line 549
    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 550
    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getType()I

    move-result v6

    if-eq v6, v3, :cond_3

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2

    const/4 v7, 0x4

    if-eq v6, v7, :cond_1

    goto :goto_0

    .line 563
    :cond_1
    check-cast p2, Ljava/util/Set;

    .line 564
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 565
    invoke-interface {p2, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 566
    invoke-virtual {v5, p1}, Landroid/content/RestrictionEntry;->setAllSelectedStrings([Ljava/lang/String;)V

    goto :goto_1

    .line 556
    :cond_2
    check-cast p1, Landroidx/preference/ListPreference;

    .line 557
    check-cast p2, Ljava/lang/String;

    invoke-virtual {v5, p2}, Landroid/content/RestrictionEntry;->setSelectedString(Ljava/lang/String;)V

    .line 558
    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getChoiceEntries()[Ljava/lang/String;

    move-result-object v1

    .line 559
    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getChoiceValues()[Ljava/lang/String;

    move-result-object v4

    .line 558
    invoke-static {v1, v4, p2}, Lcom/android/settings/users/AppRestrictionsFragment;->a([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 560
    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 552
    :cond_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v5, p1}, Landroid/content/RestrictionEntry;->setSelectedState(Z)V

    .line 571
    :goto_1
    iget-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->b:Landroid/os/UserManager;

    .line 572
    invoke-static {v2}, Landroid/content/RestrictionsManager;->convertRestrictionsToBundle(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object p2

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->d:Landroid/os/UserHandle;

    .line 571
    invoke-virtual {p1, v0, p2, v1}, Landroid/os/UserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    :cond_4
    return v3

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 797
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pkg_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 798
    check-cast p1, Lcom/android/settings/users/AppRestrictionsFragment$b;

    .line 5160
    iget-boolean v0, p1, Lcom/android/settings/users/AppRestrictionsFragment$b;->c:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 800
    invoke-virtual {p1}, Lcom/android/settings/users/AppRestrictionsFragment$b;->getKey()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 801
    invoke-virtual {p1}, Lcom/android/settings/users/AppRestrictionsFragment$b;->isChecked()Z

    move-result v2

    xor-int/2addr v2, v1

    .line 802
    invoke-virtual {p1, v2}, Lcom/android/settings/users/AppRestrictionsFragment$b;->setChecked(Z)V

    .line 803
    iget-object v3, p0, Lcom/android/settings/users/AppRestrictionsFragment;->h:Lcom/android/settingslib/p/a;

    invoke-virtual {v3, v0, v2}, Lcom/android/settingslib/p/a;->a(Ljava/lang/String;Z)V

    .line 804
    invoke-virtual {p1}, Lcom/android/settings/users/AppRestrictionsFragment$b;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/android/settings/users/AppRestrictionsFragment;->a(Ljava/lang/String;Z)V

    .line 805
    iput-boolean v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->l:Z

    .line 806
    iget-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->h:Lcom/android/settingslib/p/a;

    invoke-virtual {p1, v0, v2, p0}, Lcom/android/settingslib/p/a;->a(Ljava/lang/String;ZLcom/android/settingslib/p/a$c;)V

    :cond_0
    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onResume()V
    .locals 4

    .line 262
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->p:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_BACKGROUND"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 266
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 267
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 268
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    .line 269
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->q:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 272
    iput-boolean v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->l:Z

    .line 273
    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->o:Landroid/os/AsyncTask;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_1

    .line 274
    :cond_0
    new-instance v1, Lcom/android/settings/users/AppRestrictionsFragment$a;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/users/AppRestrictionsFragment$a;-><init>(Lcom/android/settings/users/AppRestrictionsFragment;B)V

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/android/settings/users/AppRestrictionsFragment$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->o:Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 256
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 257
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->d:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-string v1, "user_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
