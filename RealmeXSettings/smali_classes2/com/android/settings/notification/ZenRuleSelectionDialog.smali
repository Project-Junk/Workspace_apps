.class public Lcom/android/settings/notification/ZenRuleSelectionDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ZenRuleSelectionDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenRuleSelectionDialog$a;,
        Lcom/android/settings/notification/ZenRuleSelectionDialog$b;
    }
.end annotation


# static fields
.field protected static a:Lcom/android/settings/notification/ZenRuleSelectionDialog$b;

.field private static final b:Z

.field private static f:Lcom/android/settings/utils/g;

.field private static g:Landroid/content/Context;

.field private static h:Landroid/content/pm/PackageManager;

.field private static j:Landroid/app/NotificationManager;

.field private static final m:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/notification/y;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private k:Landroid/widget/LinearLayout;

.field private final l:Lcom/android/settings/utils/g$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    sget-boolean v0, Lcom/android/settings/notification/ZenModeSettings;->j:Z

    sput-boolean v0, Lcom/android/settings/notification/ZenRuleSelectionDialog;->b:Z

    .line 212
    new-instance v0, Lcom/android/settings/notification/ZenRuleSelectionDialog$3;

    invoke-direct {v0}, Lcom/android/settings/notification/ZenRuleSelectionDialog$3;-><init>()V

    sput-object v0, Lcom/android/settings/notification/ZenRuleSelectionDialog;->m:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    .line 191
    new-instance v0, Lcom/android/settings/notification/ZenRuleSelectionDialog$2;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/ZenRuleSelectionDialog$2;-><init>(Lcom/android/settings/notification/ZenRuleSelectionDialog;)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog;->l:Lcom/android/settings/utils/g$a;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settings/notification/ZenRuleSelectionDialog$b;Lcom/android/settings/utils/g;)V
    .locals 0

    .line 78
    sput-object p2, Lcom/android/settings/notification/ZenRuleSelectionDialog;->a:Lcom/android/settings/notification/ZenRuleSelectionDialog$b;

    .line 80
    sput-object p0, Lcom/android/settings/notification/ZenRuleSelectionDialog;->g:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    sput-object p0, Lcom/android/settings/notification/ZenRuleSelectionDialog;->h:Landroid/content/pm/PackageManager;

    .line 81
    sget-object p0, Lcom/android/settings/notification/ZenRuleSelectionDialog;->g:Landroid/content/Context;

    const-string p2, "notification"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    sput-object p0, Lcom/android/settings/notification/ZenRuleSelectionDialog;->j:Landroid/app/NotificationManager;

    .line 82
    sput-object p3, Lcom/android/settings/notification/ZenRuleSelectionDialog;->f:Lcom/android/settings/utils/g;

    .line 84
    new-instance p0, Lcom/android/settings/notification/ZenRuleSelectionDialog;

    invoke-direct {p0}, Lcom/android/settings/notification/ZenRuleSelectionDialog;-><init>()V

    const/4 p2, 0x0

    .line 85
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/notification/ZenRuleSelectionDialog;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 86
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string p2, "ZenRuleSelectionDialog"

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/notification/ZenRuleSelectionDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/notification/ZenRuleSelectionDialog;Ljava/util/Set;)V
    .locals 1

    .line 3186
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/y;

    .line 3187
    invoke-direct {p0, v0}, Lcom/android/settings/notification/ZenRuleSelectionDialog;->a(Lcom/android/settings/notification/y;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Lcom/android/settings/notification/y;)V
    .locals 6

    .line 118
    :try_start_0
    sget-object v0, Lcom/android/settings/notification/ZenRuleSelectionDialog;->h:Landroid/content/pm/PackageManager;

    iget-object v1, p1, Lcom/android/settings/notification/y;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 119
    sget-object v1, Lcom/android/settings/notification/ZenRuleSelectionDialog;->g:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0d03c4

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v3, 0x7f0a030f

    .line 122
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0a06f9

    .line 123
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p1, Lcom/android/settings/notification/y;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-boolean v4, p1, Lcom/android/settings/notification/y;->g:Z

    if-nez v4, :cond_0

    .line 125
    new-instance v4, Lcom/android/settings/notification/ZenRuleSelectionDialog$a;

    invoke-direct {v4, p0, v3}, Lcom/android/settings/notification/ZenRuleSelectionDialog$a;-><init>(Lcom/android/settings/notification/ZenRuleSelectionDialog;Landroid/widget/ImageView;)V

    const/4 v3, 0x1

    .line 126
    new-array v3, v3, [Landroid/content/pm/ApplicationInfo;

    aput-object v0, v3, v2

    invoke-virtual {v4, v3}, Lcom/android/settings/notification/ZenRuleSelectionDialog$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const v3, 0x7f0a0668

    .line 128
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 129
    sget-object v4, Lcom/android/settings/notification/ZenRuleSelectionDialog;->h:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 132
    :cond_0
    iget-object v0, p1, Lcom/android/settings/notification/y;->e:Landroid/net/Uri;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    sget-object v0, Lcom/android/settings/notification/ZenRuleSelectionDialog;->g:Landroid/content/Context;

    const v2, 0x7f080869

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 134
    :cond_1
    iget-object v0, p1, Lcom/android/settings/notification/y;->e:Landroid/net/Uri;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    sget-object v0, Lcom/android/settings/notification/ZenRuleSelectionDialog;->g:Landroid/content/Context;

    const v2, 0x7f0806d4

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    :cond_2
    :goto_0
    new-instance v0, Lcom/android/settings/notification/ZenRuleSelectionDialog$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/notification/ZenRuleSelectionDialog$1;-><init>(Lcom/android/settings/notification/ZenRuleSelectionDialog;Lcom/android/settings/notification/y;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object p1, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog;->k:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic a()Z
    .locals 1

    .line 51
    sget-boolean v0, Lcom/android/settings/notification/ZenRuleSelectionDialog;->b:Z

    return v0
.end method

.method static synthetic b()Ljava/util/Comparator;
    .locals 1

    .line 51
    sget-object v0, Lcom/android/settings/notification/ZenRuleSelectionDialog;->m:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic c()Landroid/content/pm/PackageManager;
    .locals 1

    .line 51
    sget-object v0, Lcom/android/settings/notification/ZenRuleSelectionDialog;->h:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic d()Landroid/app/NotificationManager;
    .locals 1

    .line 51
    sget-object v0, Lcom/android/settings/notification/ZenRuleSelectionDialog;->j:Landroid/app/NotificationManager;

    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x4f6

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenRuleSelectionDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const v2, 0x7f0d03c5

    invoke-virtual {p1, v2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v2, 0x7f0a0590

    .line 94
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog;->k:Landroid/widget/LinearLayout;

    .line 95
    sget-object v2, Lcom/android/settings/notification/ZenRuleSelectionDialog;->f:Lcom/android/settings/utils/g;

    if-eqz v2, :cond_0

    .line 1171
    new-instance v2, Landroid/service/notification/ZenModeConfig$EventInfo;

    invoke-direct {v2}, Landroid/service/notification/ZenModeConfig$EventInfo;-><init>()V

    .line 1172
    iput-object v1, v2, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    .line 1173
    iput-object v1, v2, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    .line 1174
    iput v0, v2, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    .line 1175
    new-instance v0, Lcom/android/settings/notification/y;

    invoke-direct {v0}, Lcom/android/settings/notification/y;-><init>()V

    const-string v3, "android.settings.ZEN_MODE_EVENT_RULE_SETTINGS"

    .line 1176
    iput-object v3, v0, Lcom/android/settings/notification/y;->c:Ljava/lang/String;

    .line 1177
    sget-object v3, Lcom/android/settings/notification/ZenRuleSelectionDialog;->g:Landroid/content/Context;

    const v4, 0x7f121ace

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/notification/y;->b:Ljava/lang/String;

    .line 1178
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getScheduleConditionProvider()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/notification/y;->a:Ljava/lang/String;

    .line 1179
    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->toEventConditionId(Landroid/service/notification/ZenModeConfig$EventInfo;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/notification/y;->e:Landroid/net/Uri;

    .line 1180
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getEventConditionProvider()Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/notification/y;->f:Landroid/content/ComponentName;

    const/4 v2, 0x1

    .line 1181
    iput-boolean v2, v0, Lcom/android/settings/notification/y;->g:Z

    .line 96
    invoke-direct {p0, v0}, Lcom/android/settings/notification/ZenRuleSelectionDialog;->a(Lcom/android/settings/notification/y;)V

    .line 2156
    new-instance v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    .line 2157
    sget-object v3, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    iput-object v3, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    const/16 v3, 0x16

    .line 2158
    iput v3, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    const/4 v3, 0x7

    .line 2159
    iput v3, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    .line 2160
    new-instance v3, Lcom/android/settings/notification/y;

    invoke-direct {v3}, Lcom/android/settings/notification/y;-><init>()V

    const-string v4, "android.settings.ZEN_MODE_SCHEDULE_RULE_SETTINGS"

    .line 2161
    iput-object v4, v3, Lcom/android/settings/notification/y;->c:Ljava/lang/String;

    .line 2162
    sget-object v4, Lcom/android/settings/notification/ZenRuleSelectionDialog;->g:Landroid/content/Context;

    const v5, 0x7f121bbe

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/settings/notification/y;->b:Ljava/lang/String;

    .line 2163
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getEventConditionProvider()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/settings/notification/y;->a:Ljava/lang/String;

    .line 2164
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v3, Lcom/android/settings/notification/y;->e:Landroid/net/Uri;

    .line 2165
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getScheduleConditionProvider()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, v3, Lcom/android/settings/notification/y;->f:Landroid/content/ComponentName;

    .line 2166
    iput-boolean v2, v3, Lcom/android/settings/notification/y;->g:Z

    .line 97
    invoke-direct {p0, v3}, Lcom/android/settings/notification/ZenRuleSelectionDialog;->a(Lcom/android/settings/notification/y;)V

    .line 98
    sget-object v0, Lcom/android/settings/notification/ZenRuleSelectionDialog;->f:Lcom/android/settings/utils/g;

    iget-object v2, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog;->l:Lcom/android/settings/utils/g$a;

    .line 3063
    iget-object v0, v0, Lcom/android/settings/utils/g;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v0, Lcom/android/settings/notification/ZenRuleSelectionDialog;->f:Lcom/android/settings/utils/g;

    invoke-virtual {v0}, Lcom/android/settings/utils/g;->a()V

    .line 101
    :cond_0
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenRuleSelectionDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f121b06

    .line 102
    invoke-virtual {v0, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 103
    invoke-virtual {v0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120491

    .line 104
    invoke-virtual {p1, v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 105
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 110
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 111
    sget-object p1, Lcom/android/settings/notification/ZenRuleSelectionDialog;->f:Lcom/android/settings/utils/g;

    if-eqz p1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog;->l:Lcom/android/settings/utils/g$a;

    .line 3067
    iget-object p1, p1, Lcom/android/settings/utils/g;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
