.class public Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "BatteryTipDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field a:Lcom/android/settings/fuelgauge/batterytip/c/c;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field b:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/settings/fuelgauge/batterytip/c/c;I)Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;
    .locals 3

    .line 60
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;-><init>()V

    .line 62
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "battery_tip"

    .line 63
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "metrics_key"

    .line 64
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 65
    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x52b

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController$a;

    if-nez p1, :cond_0

    return-void

    .line 157
    :cond_0
    iget-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->a:Lcom/android/settings/fuelgauge/batterytip/c/c;

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/core/InstrumentedPreferenceFragment;

    .line 157
    invoke-static {p2, v0, v1}, Lcom/android/settings/fuelgauge/batterytip/f;->a(Lcom/android/settings/fuelgauge/batterytip/c/c;Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;)Lcom/android/settings/fuelgauge/batterytip/a/b;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 161
    iget v0, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->b:I

    invoke-virtual {p2, v0}, Lcom/android/settings/fuelgauge/batterytip/a/b;->a(I)V

    .line 163
    :cond_1
    iget-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->a:Lcom/android/settings/fuelgauge/batterytip/c/c;

    invoke-interface {p1, p2}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController$a;->onBatteryTipHandled(Lcom/android/settings/fuelgauge/batterytip/c/c;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 13

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "battery_tip"

    .line 75
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/batterytip/c/c;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->a:Lcom/android/settings/fuelgauge/batterytip/c/c;

    const-string v1, "metrics_key"

    .line 76
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->b:I

    .line 78
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->a:Lcom/android/settings/fuelgauge/batterytip/c/c;

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batterytip/c/c;->e()I

    move-result p1

    const v1, 0x7f0d0298

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p1, v4, :cond_3

    const/4 v5, 0x2

    const v6, 0x104000a

    if-eq p1, v5, :cond_2

    const/4 v1, 0x6

    if-eq p1, v1, :cond_1

    const/4 v1, 0x7

    if-ne p1, v1, :cond_0

    .line 131
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->a:Lcom/android/settings/fuelgauge/batterytip/c/c;

    check-cast p1, Lcom/android/settings/fuelgauge/batterytip/c/j;

    .line 3063
    iget-object p1, p1, Lcom/android/settings/fuelgauge/batterytip/c/j;->f:Lcom/android/settings/fuelgauge/batterytip/c;

    iget-object p1, p1, Lcom/android/settings/fuelgauge/batterytip/c;->a:Ljava/lang/String;

    .line 132
    invoke-static {v0, p1}, Lcom/android/settings/m;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 135
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f12034c

    .line 136
    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f12034a

    .line 137
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f12034b

    .line 138
    invoke-virtual {p1, v0, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120349

    .line 139
    invoke-virtual {p1, v0, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 140
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1

    .line 142
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unknown type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->a:Lcom/android/settings/fuelgauge/batterytip/c/c;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/batterytip/c/c;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 80
    :cond_1
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120338

    .line 81
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 82
    invoke-virtual {p1, v6, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 83
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1

    .line 85
    :cond_2
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->a:Lcom/android/settings/fuelgauge/batterytip/c/c;

    check-cast p1, Lcom/android/settings/fuelgauge/batterytip/c/e;

    .line 86
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 89
    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v5, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 90
    new-instance v5, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;

    .line 1099
    iget-object v7, p1, Lcom/android/settings/fuelgauge/batterytip/c/e;->f:Ljava/util/List;

    .line 91
    invoke-direct {v5, v0, v7}, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 90
    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 93
    new-instance v5, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v5, v0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120336

    new-array v4, v4, [Ljava/lang/Object;

    .line 2099
    iget-object p1, p1, Lcom/android/settings/fuelgauge/batterytip/c/e;->f:Ljava/util/List;

    .line 95
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v3

    .line 94
    invoke-virtual {p0, v0, v4}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 96
    invoke-virtual {p1, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 97
    invoke-virtual {p1, v6, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 98
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1

    .line 100
    :cond_3
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->a:Lcom/android/settings/fuelgauge/batterytip/c/c;

    check-cast p1, Lcom/android/settings/fuelgauge/batterytip/c/g;

    .line 2139
    iget-object v5, p1, Lcom/android/settings/fuelgauge/batterytip/c/g;->f:Ljava/util/List;

    .line 102
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 104
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/fuelgauge/batterytip/c;

    iget-object v7, v7, Lcom/android/settings/fuelgauge/batterytip/c;->a:Ljava/lang/String;

    .line 103
    invoke-static {v0, v7}, Lcom/android/settings/m;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 106
    new-instance v8, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v8, v0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 107
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f10000b

    new-array v11, v4, [Ljava/lang/Object;

    .line 108
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v3

    .line 107
    invoke-virtual {v9, v10, v6, v11}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f120342

    .line 109
    invoke-virtual {v8, v9, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v8

    const/high16 v9, 0x1040000

    .line 110
    invoke-virtual {v8, v9, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v8

    if-ne v6, v4, :cond_4

    const p1, 0x7f120341

    .line 112
    new-array v0, v4, [Ljava/lang/Object;

    aput-object v7, v0, v3

    .line 113
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 112
    invoke-virtual {v8, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    goto :goto_1

    :cond_4
    const/4 v7, 0x5

    if-gt v6, v7, :cond_5

    const p1, 0x7f120343

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 115
    invoke-virtual {v8, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 118
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 119
    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 120
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 121
    new-instance v1, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;

    invoke-direct {v1, v0, v5}, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 122
    invoke-virtual {v8, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcolor/support/v7/app/AlertDialog$Builder;

    goto :goto_1

    :cond_5
    const v1, 0x7f120344

    .line 124
    new-array v2, v4, [Ljava/lang/Object;

    .line 2146
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2147
    iget-object v5, p1, Lcom/android/settings/fuelgauge/batterytip/c/g;->f:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v6, v3

    :goto_0
    if-ge v6, v5, :cond_6

    .line 2148
    iget-object v7, p1, Lcom/android/settings/fuelgauge/batterytip/c/g;->f:Ljava/util/List;

    .line 2149
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/fuelgauge/batterytip/c;

    iget-object v7, v7, Lcom/android/settings/fuelgauge/batterytip/c;->a:Ljava/lang/String;

    .line 2148
    invoke-static {v0, v7}, Lcom/android/settings/m;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2152
    :cond_6
    invoke-static {}, Landroid/icu/text/ListFormatter;->getInstance()Landroid/icu/text/ListFormatter;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/icu/text/ListFormatter;->format(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    .line 124
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 129
    :goto_1
    invoke-virtual {v8}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
