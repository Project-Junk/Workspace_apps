.class public Lcom/android/settings/tts/TextToSpeechSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TextToSpeechSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/widget/GearPreference$a;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field public a:Lcom/android/settings/widget/SeekBarPreference;

.field public b:Lcom/android/settings/widget/SeekBarPreference;

.field public c:I

.field private d:Lcom/android/settingslib/widget/ActionButtonsPreference;

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Landroid/speech/tts/TextToSpeech;

.field private i:Landroid/speech/tts/TtsEngines;

.field private j:Ljava/lang/String;

.field private k:Lcom/color/support/preference/ColorListPreference;

.field private l:Ljava/util/Locale;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Landroid/speech/tts/TextToSpeech$OnInitListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 799
    new-instance v0, Lcom/android/settings/tts/TextToSpeechSettings$1;

    invoke-direct {v0}, Lcom/android/settings/tts/TextToSpeechSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/tts/TextToSpeechSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/16 v0, 0x64

    .line 119
    iput v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->e:I

    .line 120
    iput v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->c:I

    const/4 v0, -0x1

    .line 122
    iput v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->f:I

    const/4 v0, 0x0

    .line 127
    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->h:Landroid/speech/tts/TextToSpeech;

    .line 128
    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->i:Landroid/speech/tts/TtsEngines;

    .line 130
    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->j:Ljava/lang/String;

    .line 152
    new-instance v0, Lcom/android/settings/tts/-$$Lambda$GcwuxKd6pw2P0CwsUzNwtmcmipk;

    invoke-direct {v0, p0}, Lcom/android/settings/tts/-$$Lambda$GcwuxKd6pw2P0CwsUzNwtmcmipk;-><init>(Lcom/android/settings/tts/TextToSpeechSettings;)V

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->n:Landroid/speech/tts/TextToSpeech$OnInitListener;

    return-void
.end method

.method private static synthetic a(Landroid/util/Pair;Landroid/util/Pair;)I
    .locals 0

    .line 533
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static a(Ljava/lang/String;I)I
    .locals 1

    const-string v0, "tts_default_rate"

    .line 359
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0xa

    return p1

    :cond_0
    const-string v0, "tts_default_pitch"

    .line 361
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    add-int/lit8 p1, p1, 0x19

    :cond_1
    return p1
.end method

.method private a(Landroid/content/Intent;)V
    .locals 8

    const-string v0, "availableVoices"

    .line 509
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "unavailableVoices"

    .line 512
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    const/4 p1, 0x0

    if-eqz v0, :cond_7

    .line 514
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 519
    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->i:Landroid/speech/tts/TtsEngines;

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->h:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v3}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/speech/tts/TtsEngines;->isLocaleSetToDefaultForEngine(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 520
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->i:Landroid/speech/tts/TtsEngines;

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->h:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v2}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/speech/tts/TtsEngines;->getLocalePrefForEngine(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    .line 523
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    .line 524
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move v3, p1

    .line 525
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 526
    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->i:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/speech/tts/TtsEngines;->parseLocaleString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 528
    new-instance v5, Landroid/util/Pair;

    invoke-virtual {v4}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 533
    :cond_3
    sget-object v3, Lcom/android/settings/tts/-$$Lambda$TextToSpeechSettings$TexOFzKxLlFyMpgktrjs-5dKEYA;->INSTANCE:Lcom/android/settings/tts/-$$Lambda$TextToSpeechSettings$TexOFzKxLlFyMpgktrjs-5dKEYA;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 536
    iput p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->f:I

    .line 537
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v3, v3, [Ljava/lang/CharSequence;

    .line 538
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v4

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 540
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f12173c

    invoke-virtual {v5, v6}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, p1

    const-string v5, ""

    .line 541
    aput-object v5, v0, p1

    .line 544
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v2, v4

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    .line 545
    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/util/Locale;

    invoke-virtual {v7, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 546
    iput v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->f:I

    .line 548
    :cond_4
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/CharSequence;

    aput-object v7, v3, v2

    add-int/lit8 v7, v2, 0x1

    .line 549
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v2

    move v2, v7

    goto :goto_1

    .line 552
    :cond_5
    iget-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->k:Lcom/color/support/preference/ColorListPreference;

    invoke-virtual {p1, v3}, Lcom/color/support/preference/ColorListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 553
    iget-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->k:Lcom/color/support/preference/ColorListPreference;

    invoke-virtual {p1, v0}, Lcom/color/support/preference/ColorListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 554
    iget-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->k:Lcom/color/support/preference/ColorListPreference;

    invoke-virtual {p1, v4}, Lcom/color/support/preference/ColorListPreference;->setEnabled(Z)V

    .line 555
    iget p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->f:I

    if-gez p1, :cond_6

    .line 3561
    iget-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->k:Lcom/color/support/preference/ColorListPreference;

    invoke-virtual {p1, v5}, Lcom/color/support/preference/ColorListPreference;->setValue(Ljava/lang/String;)V

    .line 3562
    iget-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->k:Lcom/color/support/preference/ColorListPreference;

    const v0, 0x7f12173b

    invoke-virtual {p1, v0}, Lcom/color/support/preference/ColorListPreference;->setSummary(I)V

    return-void

    .line 3564
    :cond_6
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->k:Lcom/color/support/preference/ColorListPreference;

    invoke-virtual {v0}, Lcom/color/support/preference/ColorListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 3566
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->k:Lcom/color/support/preference/ColorListPreference;

    invoke-virtual {v0}, Lcom/color/support/preference/ColorListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorListPreference;->setValue(Ljava/lang/String;)V

    .line 3568
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->k:Lcom/color/support/preference/ColorListPreference;

    invoke-virtual {v0}, Lcom/color/support/preference/ColorListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Lcom/color/support/preference/ColorListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    .line 515
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->k:Lcom/color/support/preference/ColorListPreference;

    invoke-virtual {v0, p1}, Lcom/color/support/preference/ColorListPreference;->setEnabled(Z)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->b()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 747
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.tts.engine.CHECK_TTS_DATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 748
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x7b9

    .line 751
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/tts/TextToSpeechSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 753
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Failed to check TTS data, no activity found for "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TextToSpeechSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static b(Ljava/lang/String;I)I
    .locals 1

    const-string v0, "tts_default_rate"

    .line 372
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, -0xa

    return p1

    :cond_0
    const-string v0, "tts_default_pitch"

    .line 374
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    add-int/lit8 p1, p1, -0x19

    :cond_1
    return p1
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 0

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->a()V

    return-void
.end method

.method private synthetic b(Z)V
    .locals 1

    .line 728
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->d:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->b(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 729
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->b:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SeekBarPreference;->setEnabled(Z)V

    .line 730
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->a:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SeekBarPreference;->setEnabled(Z)V

    return-void
.end method

.method private c(I)V
    .locals 2

    const-string v0, "tts_default_pitch"

    .line 712
    invoke-static {v0, p1}, Lcom/android/settings/tts/TextToSpeechSettings;->a(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->e:I

    .line 715
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->e:I

    .line 714
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 716
    iget-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->h:Landroid/speech/tts/TextToSpeech;

    if-eqz p1, :cond_0

    .line 717
    iget-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->h:Landroid/speech/tts/TextToSpeech;

    iget v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->e:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string v0, "TextToSpeechSettings"

    const-string v1, "could not persist default TTS pitch setting"

    .line 721
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private e()V
    .locals 4

    .line 308
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/16 v1, 0x64

    const-string v2, "tts_default_rate"

    .line 312
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->c:I

    const-string v3, "tts_default_pitch"

    .line 315
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->e:I

    .line 318
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->b:Lcom/android/settings/widget/SeekBarPreference;

    iget v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->c:I

    invoke-static {v2, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->b(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SeekBarPreference;->f(I)V

    .line 319
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->b:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SeekBarPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 320
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->b:Lcom/android/settings/widget/SeekBarPreference;

    const/16 v1, 0x258

    invoke-static {v2, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->b(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SeekBarPreference;->d(I)V

    .line 322
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->a:Lcom/android/settings/widget/SeekBarPreference;

    iget v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->e:I

    .line 323
    invoke-static {v3, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->b(Ljava/lang/String;I)I

    move-result v1

    .line 322
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SeekBarPreference;->f(I)V

    .line 324
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->a:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SeekBarPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 325
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->a:Lcom/android/settings/widget/SeekBarPreference;

    const/16 v1, 0x190

    invoke-static {v3, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->b(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SeekBarPreference;->d(I)V

    .line 327
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->h:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->g:Ljava/lang/String;

    .line 329
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->h:Landroid/speech/tts/TextToSpeech;

    iget v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->c:I

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    .line 330
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->h:Landroid/speech/tts/TextToSpeech;

    iget v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->e:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I

    .line 334
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_2

    .line 335
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 341
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->g:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 342
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->i:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v1, v0}, Landroid/speech/tts/TtsEngines;->getEngineInfo(Ljava/lang/String;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v0

    const-string v1, "tts_engine_preference"

    .line 344
    invoke-virtual {p0, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    .line 345
    move-object v2, v1

    check-cast v2, Lcom/android/settings/widget/GearPreference;

    invoke-virtual {v2, p0}, Lcom/android/settings/widget/GearPreference;->a(Lcom/android/settings/widget/GearPreference$a;)V

    .line 346
    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->g:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->a(Ljava/lang/String;)V

    return-void

    .line 337
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TextToSpeechSettings used outside a Settings"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private f()V
    .locals 4

    .line 400
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->h:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getDefaultLanguage()Ljava/util/Locale;

    move-result-object v0

    if-nez v0, :cond_0

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to get default language from engine "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextToSpeechSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 403
    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->a(Z)V

    return-void

    .line 409
    :cond_0
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->l:Ljava/util/Locale;

    .line 410
    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->i:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/speech/tts/TtsEngines;->parseLocaleString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->l:Ljava/util/Locale;

    .line 411
    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->l:Ljava/util/Locale;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 412
    iput-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->j:Ljava/lang/String;

    .line 415
    :cond_1
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->h:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1, v0}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 416
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->j:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 417
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->h()V

    :cond_2
    return-void
.end method

.method private g()Z
    .locals 5

    .line 424
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->l:Ljava/util/Locale;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->m:Ljava/util/List;

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 431
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    .line 432
    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->l:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "-"

    if-nez v2, :cond_1

    .line 433
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->l:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 435
    :cond_1
    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->l:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 436
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->l:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 439
    :cond_2
    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 440
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v4

    .line 451
    :goto_0
    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->h:Landroid/speech/tts/TextToSpeech;

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->l:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v2

    const/4 v3, -0x2

    if-eq v2, v3, :cond_6

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    if-eqz v0, :cond_5

    goto :goto_1

    .line 459
    :cond_5
    invoke-virtual {p0, v4}, Lcom/android/settings/tts/TextToSpeechSettings;->a(Z)V

    return v4

    .line 456
    :cond_6
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->a(Z)V

    return v1

    .line 447
    :catch_0
    invoke-virtual {p0, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->a(Z)V

    :cond_7
    :goto_2
    return v1
.end method

.method private h()V
    .locals 4

    .line 469
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->h:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    .line 471
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->h:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    move-result-object v0

    .line 477
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.tts.engine.GET_SAMPLE_TEXT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 479
    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->l:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "language"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 480
    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->l:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    const-string v3, "country"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 481
    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->l:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v2

    const-string v3, "variant"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 482
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x7bf

    .line 486
    :try_start_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 488
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Failed to get sample text, no activity found for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextToSpeechSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private i()Ljava/lang/String;
    .locals 5

    .line 574
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->h:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 576
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->h:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    .line 577
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0300ed

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 579
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0300ec

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 582
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 583
    aget-object v4, v2, v3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 584
    aget-object v0, v1, v3
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    const v0, 0x7f12172b

    .line 592
    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic j()V
    .locals 2

    .line 387
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->k:Lcom/color/support/preference/ColorListPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorListPreference;->setEnabled(Z)V

    .line 388
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->highlightPreferenceForce()V

    return-void
.end method

.method public static synthetic lambda$TexOFzKxLlFyMpgktrjs-5dKEYA(Landroid/util/Pair;Landroid/util/Pair;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/tts/TextToSpeechSettings;->a(Landroid/util/Pair;Landroid/util/Pair;)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$lTBjg0huzwfNZfa6Mx0vwhV68Nk(Lcom/android/settings/tts/TextToSpeechSettings;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/tts/TextToSpeechSettings;->b(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$pvOk-jVzh2k-AYO_LUf0ZVuhwcg(Lcom/android/settings/tts/TextToSpeechSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->j()V

    return-void
.end method

.method public static synthetic lambda$rAUZE1s-ixff4yAyYEfAci48TdI(Lcom/android/settings/tts/TextToSpeechSettings;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/tts/TextToSpeechSettings;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$y9EOize3fwfadqoSD9z2akzWePs(Lcom/android/settings/tts/TextToSpeechSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/tts/TextToSpeechSettings;->b(Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 3596
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->h:Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->l:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->getFeatures(Ljava/util/Locale;)Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "networkTts"

    .line 3600
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "embeddedTts"

    .line 3601
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 626
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->h:Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->l:Ljava/util/Locale;

    .line 627
    invoke-virtual {v0, v2}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v0

    if-ltz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "TextToSpeechSettings"

    const-string v2, "Network required for sample synthesis for requested language"

    .line 633
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3735
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1040014

    .line 3736
    invoke-virtual {v0, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 3737
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f12172c

    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 3738
    invoke-virtual {v2, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    .line 3739
    invoke-virtual {v1, v2, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 3741
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v0

    .line 3742
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->show()V

    return-void

    .line 628
    :cond_2
    :goto_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "utteranceId"

    const-string v3, "Sample"

    .line 629
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->h:Landroid/speech/tts/TextToSpeech;

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->j:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v0}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    return-void
.end method

.method public a(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 384
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->f()V

    .line 385
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/android/settings/tts/-$$Lambda$TextToSpeechSettings$pvOk-jVzh2k-AYO_LUf0ZVuhwcg;

    invoke-direct {v0, p0}, Lcom/android/settings/tts/-$$Lambda$TextToSpeechSettings$pvOk-jVzh2k-AYO_LUf0ZVuhwcg;-><init>(Lcom/android/settings/tts/TextToSpeechSettings;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 395
    invoke-virtual {p0, p1}, Lcom/android/settings/tts/TextToSpeechSettings;->a(Z)V

    return-void
.end method

.method protected a(Z)V
    .locals 2

    .line 727
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/tts/-$$Lambda$TextToSpeechSettings$y9EOize3fwfadqoSD9z2akzWePs;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/tts/-$$Lambda$TextToSpeechSettings$y9EOize3fwfadqoSD9z2akzWePs;-><init>(Lcom/android/settings/tts/TextToSpeechSettings;Z)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()V
    .locals 3

    const/16 v0, 0x64

    const-string v1, "tts_default_rate"

    .line 685
    invoke-static {v1, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->b(Ljava/lang/String;I)I

    move-result v1

    .line 687
    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->b:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SeekBarPreference;->f(I)V

    .line 688
    invoke-virtual {p0, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->b(I)V

    const-string v1, "tts_default_pitch"

    .line 690
    invoke-static {v1, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->b(Ljava/lang/String;I)I

    move-result v0

    .line 692
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->a:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SeekBarPreference;->f(I)V

    .line 693
    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->c(I)V

    return-void
.end method

.method protected b(I)V
    .locals 2

    const-string v0, "tts_default_rate"

    .line 697
    invoke-static {v0, p1}, Lcom/android/settings/tts/TextToSpeechSettings;->a(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->c:I

    .line 700
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->c:I

    .line 699
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 701
    iget-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->h:Landroid/speech/tts/TextToSpeech;

    if-eqz p1, :cond_0

    .line 702
    iget-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->h:Landroid/speech/tts/TextToSpeech;

    iget v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->c:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string v0, "TextToSpeechSettings"

    const-string v1, "could not persist default TTS rate setting"

    .line 706
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method protected c()I
    .locals 1

    const v0, 0x7f15012d

    return v0
.end method

.method protected d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x5e

    return v0
.end method

.method public isSpecialHighlightClass()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "TextToSpeechSettings"

    const/16 v1, 0x7bf

    if-ne p1, v1, :cond_2

    .line 2605
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->i()Ljava/lang/String;

    move-result-object p1

    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p3, :cond_0

    const-string p2, "sampleText"

    .line 2608
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2609
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2616
    :cond_0
    iput-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->j:Ljava/lang/String;

    .line 2617
    iget-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->j:Ljava/lang/String;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 2618
    invoke-virtual {p0, p1}, Lcom/android/settings/tts/TextToSpeechSettings;->a(Z)V

    return-void

    :cond_1
    const-string p1, "Did not have a sample string for the requested language. Using default"

    .line 2620
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/16 v1, 0x7b9

    if-ne p1, v1, :cond_7

    .line 2759
    iget-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->h:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p1}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, "Voice data check complete, but no engine bound"

    .line 2762
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    if-nez p3, :cond_4

    .line 2767
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Engine failed voice data integrity check (null return)"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->h:Landroid/speech/tts/TextToSpeech;

    .line 2768
    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2767
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2772
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tts_default_synth"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string p1, "availableVoices"

    .line 2774
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->m:Ljava/util/List;

    .line 2776
    iget-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->m:Ljava/util/List;

    if-nez p1, :cond_5

    const-string p1, "Voice data check complete, but no available voices found"

    .line 2777
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2779
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->m:Ljava/util/List;

    .line 2781
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->g()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 2782
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->h()V

    :cond_6
    :goto_0
    if-eqz p2, :cond_7

    .line 502
    invoke-direct {p0, p3}, Lcom/android/settings/tts/TextToSpeechSettings;->a(Landroid/content/Intent;)V

    :cond_7
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 161
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->addPreferencesFromResource(I)V

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->setVolumeControlStream(I)V

    .line 168
    new-instance v0, Landroid/speech/tts/TtsEngines;

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->i:Landroid/speech/tts/TtsEngines;

    const-string v0, "tts_default_lang"

    .line 170
    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/color/support/preference/ColorListPreference;

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->k:Lcom/color/support/preference/ColorListPreference;

    .line 171
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->k:Lcom/color/support/preference/ColorListPreference;

    invoke-virtual {v0, p0}, Lcom/color/support/preference/ColorListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "tts_default_pitch"

    .line 173
    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/SeekBarPreference;

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->a:Lcom/android/settings/widget/SeekBarPreference;

    const-string v0, "tts_default_rate"

    .line 174
    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/SeekBarPreference;

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->b:Lcom/android/settings/widget/SeekBarPreference;

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->d()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v0, "action_buttons"

    .line 178
    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/ActionButtonsPreference;

    const v3, 0x7f12173d

    .line 179
    invoke-virtual {v0, v3}, Lcom/android/settingslib/widget/ActionButtonsPreference;->a(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    new-instance v3, Lcom/android/settings/tts/-$$Lambda$TextToSpeechSettings$lTBjg0huzwfNZfa6Mx0vwhV68Nk;

    invoke-direct {v3, p0}, Lcom/android/settings/tts/-$$Lambda$TextToSpeechSettings$lTBjg0huzwfNZfa6Mx0vwhV68Nk;-><init>(Lcom/android/settings/tts/TextToSpeechSettings;)V

    .line 180
    invoke-virtual {v0, v3}, Lcom/android/settingslib/widget/ActionButtonsPreference;->a(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    .line 181
    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/ActionButtonsPreference;->b(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    const v3, 0x7f121740

    .line 182
    invoke-virtual {v0, v3}, Lcom/android/settingslib/widget/ActionButtonsPreference;->c(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    new-instance v3, Lcom/android/settings/tts/-$$Lambda$TextToSpeechSettings$rAUZE1s-ixff4yAyYEfAci48TdI;

    invoke-direct {v3, p0}, Lcom/android/settings/tts/-$$Lambda$TextToSpeechSettings$rAUZE1s-ixff4yAyYEfAci48TdI;-><init>(Lcom/android/settings/tts/TextToSpeechSettings;)V

    .line 183
    invoke-virtual {v0, v3}, Lcom/android/settingslib/widget/ActionButtonsPreference;->b(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    .line 184
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->b(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->d:Lcom/android/settingslib/widget/ActionButtonsPreference;

    :cond_0
    if-nez p1, :cond_1

    .line 189
    iget-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->k:Lcom/color/support/preference/ColorListPreference;

    invoke-virtual {p1, v2}, Lcom/color/support/preference/ColorListPreference;->setEnabled(Z)V

    .line 190
    iget-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->k:Lcom/color/support/preference/ColorListPreference;

    new-array v0, v2, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/color/support/preference/ColorListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 191
    iget-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->k:Lcom/color/support/preference/ColorListPreference;

    new-array v0, v2, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/color/support/preference/ColorListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 192
    iget-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->k:Lcom/color/support/preference/ColorListPreference;

    const v0, 0x7f121621

    invoke-virtual {p1, v0}, Lcom/color/support/preference/ColorListPreference;->setSummary(I)V

    goto :goto_1

    :cond_1
    const-string v0, "locale_entries"

    .line 197
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    const-string v3, "locale_entry_values"

    .line 199
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v3

    const-string v4, "locale_value"

    .line 200
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 202
    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->k:Lcom/color/support/preference/ColorListPreference;

    invoke-virtual {v4, v0}, Lcom/color/support/preference/ColorListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 203
    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->k:Lcom/color/support/preference/ColorListPreference;

    invoke-virtual {v4, v3}, Lcom/color/support/preference/ColorListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 204
    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->k:Lcom/color/support/preference/ColorListPreference;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v3, p1}, Lcom/color/support/preference/ColorListPreference;->setValue(Ljava/lang/String;)V

    .line 205
    iget-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->k:Lcom/color/support/preference/ColorListPreference;

    array-length v0, v0

    if-lez v0, :cond_3

    move v2, v1

    :cond_3
    invoke-virtual {p1, v2}, Lcom/color/support/preference/ColorListPreference;->setEnabled(Z)V

    .line 208
    :goto_1
    new-instance p1, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->n:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {p1, v0, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->h:Landroid/speech/tts/TextToSpeech;

    .line 211
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->e()V

    .line 214
    invoke-virtual {p0, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->setRetainInstance(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 287
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 288
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->h:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    const/4 v0, 0x0

    .line 290
    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->h:Landroid/speech/tts/TextToSpeech;

    :cond_0
    return-void
.end method

.method public onGearClick(Lcom/android/settings/widget/GearPreference;)V
    .locals 1

    .line 788
    invoke-virtual {p1}, Lcom/android/settings/widget/GearPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "tts_engine_preference"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 789
    iget-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->i:Landroid/speech/tts/TtsEngines;

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/speech/tts/TtsEngines;->getEngineInfo(Ljava/lang/String;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object p1

    .line 790
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->i:Landroid/speech/tts/TtsEngines;

    iget-object p1, p1, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/speech/tts/TtsEngines;->getSettingsIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 792
    invoke-virtual {p0, p1}, Lcom/android/settings/tts/TextToSpeechSettings;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string p1, "TextToSpeechSettings"

    const-string v0, "settingsIntent is null"

    .line 794
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 640
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tts_default_rate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 641
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/tts/TextToSpeechSettings;->b(I)V

    goto/16 :goto_6

    .line 642
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "tts_default_pitch"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 643
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/tts/TextToSpeechSettings;->c(I)V

    goto/16 :goto_6

    .line 644
    :cond_1
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->k:Lcom/color/support/preference/ColorListPreference;

    if-ne p1, v0, :cond_8

    .line 645
    check-cast p2, Ljava/lang/String;

    .line 647
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->i:Landroid/speech/tts/TtsEngines;

    .line 648
    invoke-virtual {p1, p2}, Landroid/speech/tts/TtsEngines;->parseLocaleString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 4658
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_3
    const-string p2, ""

    :goto_1
    const/4 v0, 0x0

    .line 4659
    :goto_2
    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->k:Lcom/color/support/preference/ColorListPreference;

    invoke-virtual {v2}, Lcom/color/support/preference/ColorListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    array-length v2, v2

    const/4 v3, -0x1

    if-ge v0, v2, :cond_5

    .line 4660
    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->k:Lcom/color/support/preference/ColorListPreference;

    invoke-virtual {v2}, Lcom/color/support/preference/ColorListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    move v0, v3

    :goto_3
    if-ne v0, v3, :cond_6

    const-string p1, "TextToSpeechSettings"

    const-string p2, "updateLanguageTo called with unknown locale argument"

    .line 4667
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 4670
    :cond_6
    iget-object p2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->k:Lcom/color/support/preference/ColorListPreference;

    invoke-virtual {p2}, Lcom/color/support/preference/ColorListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {p2, v2}, Lcom/color/support/preference/ColorListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 4672
    iget-object p2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->k:Lcom/color/support/preference/ColorListPreference;

    invoke-virtual {p2}, Lcom/color/support/preference/ColorListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/color/support/preference/ColorListPreference;->setValue(Ljava/lang/String;)V

    .line 4674
    iput v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->f:I

    .line 4676
    iget-object p2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->i:Landroid/speech/tts/TtsEngines;

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->h:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Landroid/speech/tts/TtsEngines;->updateLocalePrefForEngine(Ljava/lang/String;Ljava/util/Locale;)V

    .line 4679
    iget-object p2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->h:Landroid/speech/tts/TextToSpeech;

    if-eqz p1, :cond_7

    goto :goto_4

    :cond_7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    :goto_4
    invoke-virtual {p2, p1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 650
    :goto_5
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->f()V

    :cond_8
    :goto_6
    return v1
.end method

.method public onResume()V
    .locals 4

    .line 219
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    .line 226
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->h:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->l:Ljava/util/Locale;

    if-nez v1, :cond_0

    goto :goto_2

    .line 229
    :cond_0
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->h:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->h:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    const/4 v0, 0x0

    .line 232
    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->h:Landroid/speech/tts/TextToSpeech;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 234
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error shutting down TTS engine"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextToSpeechSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :goto_0
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->n:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->h:Landroid/speech/tts/TextToSpeech;

    .line 238
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->e()V

    goto :goto_1

    .line 242
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->h:Landroid/speech/tts/TextToSpeech;

    const/16 v2, 0x64

    const-string v3, "tts_default_pitch"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I

    .line 247
    :goto_1
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->h:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getDefaultLanguage()Ljava/util/Locale;

    move-result-object v0

    .line 248
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->l:Ljava/util/Locale;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 249
    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->a(Z)V

    .line 250
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->f()V

    :cond_2
    :goto_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 296
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 299
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->k:Lcom/color/support/preference/ColorListPreference;

    .line 300
    invoke-virtual {v0}, Lcom/color/support/preference/ColorListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "locale_entries"

    .line 299
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 301
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->k:Lcom/color/support/preference/ColorListPreference;

    .line 302
    invoke-virtual {v0}, Lcom/color/support/preference/ColorListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "locale_entry_values"

    .line 301
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 303
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->k:Lcom/color/support/preference/ColorListPreference;

    .line 304
    invoke-virtual {v0}, Lcom/color/support/preference/ColorListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "locale_value"

    .line 303
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method
