.class public Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "RenameMobileNetworkDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$a;,
        Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$b;
    }
.end annotation


# instance fields
.field private a:Landroid/telephony/TelephonyManager;

.field private b:Landroid/telephony/SubscriptionManager;

.field private f:I

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/Spinner;

.field private j:[Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static a(I)Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;
    .locals 2

    .line 72
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string v1, "subscription_id"

    .line 73
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 74
    new-instance p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;

    invoke-direct {p0}, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;-><init>()V

    .line 75
    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private synthetic a(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 120
    iget-object p1, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->b:Landroid/telephony/SubscriptionManager;

    iget-object p2, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->g:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iget v0, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->f:I

    const/4 v1, 0x2

    invoke-virtual {p1, p2, v0, v1}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;II)I

    .line 122
    iget-object p1, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->b:Landroid/telephony/SubscriptionManager;

    iget-object p2, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->j:[Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$a;

    iget-object v0, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->h:Landroid/widget/Spinner;

    .line 123
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    aget-object p2, p2, v0

    .line 3241
    iget p2, p2, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$a;->b:I

    .line 123
    iget v0, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->f:I

    .line 122
    invoke-virtual {p1, p2, v0}, Landroid/telephony/SubscriptionManager;->setIconTint(II)I

    return-void
.end method

.method public static synthetic lambda$xwWYVth7Ls5hj9Dg156sO4PefSo(Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x66a

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 101
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onAttach(Landroid/content/Context;)V

    .line 1081
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 102
    iput-object v0, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->a:Landroid/telephony/TelephonyManager;

    .line 1086
    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    .line 103
    iput-object p1, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->b:Landroid/telephony/SubscriptionManager;

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "subscription_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->f:I

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 13
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1207
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "com.android.internal.R.array.sim_colors"

    .line 1208
    invoke-static {v0}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    const v1, 0x7f030057

    .line 1209
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070254

    .line 1210
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f070255

    .line 1211
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 1212
    array-length v3, v0

    new-array v9, v3, [Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$a;

    const/4 v10, 0x0

    move v11, v10

    .line 1213
    :goto_0
    array-length v3, v9

    if-ge v11, v3, :cond_0

    .line 1214
    new-instance v12, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$a;

    aget-object v4, v1, v11

    aget v5, v0, v11

    const/4 v8, 0x0

    move-object v3, v12

    move v6, v2

    move v7, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$a;-><init>(Ljava/lang/String;IIIB)V

    aput-object v12, v9, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 110
    :cond_0
    iput-object v9, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->j:[Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$a;

    .line 112
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 113
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/LayoutInflater;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d015b

    const/4 v2, 0x0

    .line 115
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0443

    .line 2132
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->g:Landroid/widget/EditText;

    .line 2133
    iget-object v1, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->b:Landroid/telephony/SubscriptionManager;

    iget v3, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->f:I

    invoke-virtual {v1, v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2135
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "got null SubscriptionInfo for mSubId:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->f:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RenameMobileNetwork"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2138
    :cond_1
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    .line 2139
    iget-object v4, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->g:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2140
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2141
    iget-object v4, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->g:Landroid/widget/EditText;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setSelection(I)V

    :cond_2
    const v3, 0x7f0a017d

    .line 2144
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->h:Landroid/widget/Spinner;

    .line 2145
    new-instance v3, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$b;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->j:[Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$a;

    invoke-direct {v3, p0, v4, v5}, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$b;-><init>(Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;Landroid/content/Context;[Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$a;)V

    .line 2147
    iget-object v4, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->h:Landroid/widget/Spinner;

    invoke-virtual {v4, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    move v3, v10

    .line 2148
    :goto_1
    iget-object v4, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->j:[Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$a;

    array-length v5, v4

    if-ge v3, v5, :cond_4

    .line 2149
    aget-object v4, v4, v3

    .line 2241
    iget v4, v4, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$a;->b:I

    .line 2149
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 2150
    iget-object v4, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->h:Landroid/widget/Spinner;

    invoke-virtual {v4, v3}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    const v3, 0x7f0a048a

    .line 2155
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2156
    iget-object v4, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->a:Landroid/telephony/TelephonyManager;

    iget v5, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->f:I

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getServiceStateForSubscriber(I)Landroid/telephony/ServiceState;

    move-result-object v4

    .line 2157
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0a0478

    .line 2159
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2160
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v10, 0x8

    :cond_5
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    const v3, 0x7f0a0479

    .line 2162
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2163
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/android/settingslib/b;->a(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v1

    .line 2164
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v4

    sget-object v5, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v4, v1, v5}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    const v1, 0x7f120db5

    .line 117
    invoke-virtual {p1, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 118
    invoke-virtual {v1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120db7

    new-instance v3, Lcom/android/settings/network/telephony/-$$Lambda$RenameMobileNetworkDialogFragment$xwWYVth7Ls5hj9Dg156sO4PefSo;

    invoke-direct {v3, p0}, Lcom/android/settings/network/telephony/-$$Lambda$RenameMobileNetworkDialogFragment$xwWYVth7Ls5hj9Dg156sO4PefSo;-><init>(Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;)V

    .line 119
    invoke-virtual {v0, v1, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    .line 126
    invoke-virtual {v0, v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 127
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
