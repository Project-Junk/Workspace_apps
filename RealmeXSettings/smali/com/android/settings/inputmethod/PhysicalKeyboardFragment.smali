.class public final Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PhysicalKeyboardFragment.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;
.implements Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$a;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/hardware/input/InputManager;

.field private c:Landroidx/preference/PreferenceCategory;

.field private d:Landroidx/preference/TwoStatePreference;

.field private e:Landroid/content/Intent;

.field private final f:Landroidx/preference/Preference$OnPreferenceChangeListener;

.field private final g:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 335
    new-instance v0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$3;

    invoke-direct {v0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$3;-><init>()V

    sput-object v0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 59
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->a:Ljava/util/ArrayList;

    .line 211
    new-instance v0, Lcom/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$ashIZ4uadp1ks3jp8dWHbdoMFbw;

    invoke-direct {v0, p0}, Lcom/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$ashIZ4uadp1ks3jp8dWHbdoMFbw;-><init>(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)V

    iput-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->f:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 218
    new-instance v0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$2;

    new-instance v1, Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Z)V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$2;-><init>(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->g:Landroid/database/ContentObserver;

    return-void
.end method

.method private static synthetic a(Ljava/text/Collator;Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$a;Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$a;)I
    .locals 2

    .line 282
    iget-object v0, p1, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$a;->a:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$a;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 286
    :cond_0
    iget-object v0, p1, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$a;->b:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v0}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$a;->b:Landroid/hardware/input/InputDeviceIdentifier;

    .line 287
    invoke-virtual {v1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 286
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 291
    :cond_1
    iget-object p1, p1, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$a;->c:Ljava/lang/String;

    iget-object p2, p2, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$a;->c:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static a(Landroid/content/Context;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$a;",
            ">;"
        }
    .end annotation

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 266
    const-class v1, Landroid/hardware/input/InputManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    if-nez v1, :cond_0

    .line 268
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 270
    :cond_0
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    aget v5, v2, v4

    .line 271
    invoke-static {v5}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 272
    invoke-virtual {v5}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v5}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 275
    new-instance v6, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$a;

    .line 276
    invoke-virtual {v5}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v8

    .line 1250
    invoke-virtual {v5}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/hardware/input/InputManager;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v5

    const v9, 0x7f120b57

    if-nez v5, :cond_1

    .line 1252
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 1254
    :cond_1
    invoke-virtual {v1, v5}, Landroid/hardware/input/InputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v5

    if-nez v5, :cond_2

    .line 1256
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 1260
    :cond_2
    invoke-virtual {v5}, Landroid/hardware/input/KeyboardLayout;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 276
    :goto_1
    invoke-direct {v6, v7, v8, v5}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$a;-><init>(Ljava/lang/String;Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    .line 275
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 280
    :cond_4
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object p0

    .line 281
    new-instance v1, Lcom/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$lfzP9pEZ3pIBGxnYrQHjPhWuokU;

    invoke-direct {v1, p0}, Lcom/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$lfzP9pEZ3pIBGxnYrQHjPhWuokU;-><init>(Ljava/text/Collator;)V

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-object v0
.end method

.method private a()V
    .locals 2

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 140
    new-instance v1, Lcom/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$GTS0OgJRnlLd86kIGPpMX-amF_Y;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$GTS0OgJRnlLd86kIGPpMX-amF_Y;-><init>(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;Landroid/content/Context;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/d;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)V
    .locals 0

    .line 2208
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->requestShowKeyboardShortcuts()V

    return-void
.end method

.method private synthetic a(Ljava/util/List;)V
    .locals 5

    .line 2147
    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->a:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2154
    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2155
    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2157
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 2158
    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->removeAll()V

    .line 2159
    new-instance v1, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const v2, 0x7f12045c

    .line 2160
    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceCategory;->setTitle(I)V

    const/4 v2, 0x0

    .line 2161
    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceCategory;->setOrder(I)V

    .line 2162
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 2164
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$a;

    .line 2166
    new-instance v3, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 2167
    iget-object v4, v2, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2168
    iget-object v4, v2, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$a;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2169
    new-instance v4, Lcom/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$szOfvmhJYyYGW51MZQNoUHz9_w8;

    invoke-direct {v4, p0, v2}, Lcom/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$szOfvmhJYyYGW51MZQNoUHz9_w8;-><init>(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$a;)V

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 2173
    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 2176
    :cond_0
    iget-object p1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->c:Landroidx/preference/PreferenceCategory;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceCategory;->setOrder(I)V

    .line 2177
    iget-object p1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->c:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 2178
    invoke-direct {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->c()V

    :cond_1
    return-void
.end method

.method private synthetic a(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    check-cast p2, Ljava/lang/Boolean;

    .line 214
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v0, "show_ime_with_hard_keyboard"

    .line 213
    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic a(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$a;Landroidx/preference/Preference;)Z
    .locals 0

    .line 170
    iget-object p1, p1, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$a;->b:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->b(Landroid/hardware/input/InputDeviceIdentifier;)V

    const/4 p1, 0x1

    return p1
.end method

.method private b()V
    .locals 2

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->g:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private synthetic b(Landroid/content/Context;)V
    .locals 1

    .line 141
    invoke-static {p1}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    .line 142
    new-instance v0, Lcom/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$ejtpcLYyWKkNY58JeJPbqrroJzg;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$ejtpcLYyWKkNY58JeJPbqrroJzg;-><init>(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;Ljava/util/List;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/d;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private b(Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 2

    .line 182
    new-instance v0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;

    invoke-direct {v0, p1}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;-><init>(Landroid/hardware/input/InputDeviceIdentifier;)V

    const/4 p1, 0x0

    .line 184
    invoke-virtual {v0, p0, p1}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v1, "keyboardLayout"

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->c()V

    return-void
.end method

.method private c()V
    .locals 4

    .line 203
    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->d:Landroidx/preference/TwoStatePreference;

    .line 204
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "show_ime_with_hard_keyboard"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 203
    :cond_0
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public static synthetic lambda$GTS0OgJRnlLd86kIGPpMX-amF_Y(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic lambda$ashIZ4uadp1ks3jp8dWHbdoMFbw(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->a(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$ejtpcLYyWKkNY58JeJPbqrroJzg(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->a(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$lfzP9pEZ3pIBGxnYrQHjPhWuokU(Ljava/text/Collator;Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$a;Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$a;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->a(Ljava/text/Collator;Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$a;Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$a;)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$szOfvmhJYyYGW51MZQNoUHz9_w8(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$a;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->a(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$a;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 3

    .line 227
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/android/settings/Settings$KeyboardLayoutPickerActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "input_device_identifier"

    .line 229
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 231
    iput-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->e:Landroid/content/Intent;

    const/4 p1, 0x0

    .line 232
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public final getMetricsCategory()I
    .locals 1

    const/16 v0, 0x15a

    return v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 237
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 239
    iget-object p1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->e:Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string p2, "input_device_identifier"

    .line 241
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputDeviceIdentifier;

    const/4 p2, 0x0

    .line 242
    iput-object p2, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->e:Landroid/content/Intent;

    .line 243
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->b(Landroid/hardware/input/InputDeviceIdentifier;)V

    :cond_0
    return-void
.end method

.method public final onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    const p2, 0x7f1500ec

    .line 81
    invoke-virtual {p0, p2}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->addPreferencesFromResource(I)V

    .line 82
    const-class p2, Landroid/hardware/input/InputManager;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    iput-object p1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->b:Landroid/hardware/input/InputManager;

    const-string p1, "keyboard_assistance_category"

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    .line 83
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->c:Landroidx/preference/PreferenceCategory;

    .line 85
    iget-object p1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->c:Landroidx/preference/PreferenceCategory;

    const-string p2, "show_virtual_keyboard_switch"

    .line 86
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/TwoStatePreference;

    .line 85
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/TwoStatePreference;

    iput-object p1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->d:Landroidx/preference/TwoStatePreference;

    const-string p1, "keyboard_shortcuts_helper"

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    new-instance p2, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$1;

    invoke-direct {p2, p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$1;-><init>(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public final onInputDeviceAdded(I)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->a()V

    return-void
.end method

.method public final onInputDeviceChanged(I)V
    .locals 0

    .line 130
    invoke-direct {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->a()V

    return-void
.end method

.method public final onInputDeviceRemoved(I)V
    .locals 0

    .line 125
    invoke-direct {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->a()V

    return-void
.end method

.method public final onPause()V
    .locals 2

    .line 111
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 112
    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 113
    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->b:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->d:Landroidx/preference/TwoStatePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 115
    invoke-direct {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->b()V

    return-void
.end method

.method public final onResume()V
    .locals 5

    .line 100
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 101
    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 102
    invoke-direct {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->a()V

    .line 103
    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->b:Landroid/hardware/input/InputManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 104
    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->d:Landroidx/preference/TwoStatePreference;

    iget-object v1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->f:Landroidx/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 1189
    invoke-direct {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->b()V

    .line 1190
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_ime_with_hard_keyboard"

    .line 1191
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->g:Landroid/database/ContentObserver;

    .line 1194
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/4 v4, 0x0

    .line 1190
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1195
    invoke-direct {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->c()V

    return-void
.end method
