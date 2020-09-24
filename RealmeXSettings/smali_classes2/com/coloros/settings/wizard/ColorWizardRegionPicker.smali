.class public Lcom/coloros/settings/wizard/ColorWizardRegionPicker;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ColorWizardRegionPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/coloros/settings/wizard/ColorWizardRegionPicker;->d:Landroid/graphics/Typeface;

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 4

    .line 71
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->ag(Landroid/content/Context;)I

    move-result v0

    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v2, v0

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 72
    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private static synthetic a(Landroid/view/Window;II)V
    .locals 0

    .line 200
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public static synthetic lambda$7jjiq9kxx37iALh7dFdP-F4umiU(Lcom/coloros/settings/wizard/ColorWizardRegionPicker;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/wizard/ColorWizardRegionPicker;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$FwHYygKWy9HBoIkqzJeuKXX148M(Landroid/view/Window;II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/settings/wizard/ColorWizardRegionPicker;->a(Landroid/view/Window;II)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/coloros/settings/wizard/ColorWizardRegionPicker;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 164
    iget-object v0, p0, Lcom/coloros/settings/wizard/ColorWizardRegionPicker;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 165
    iget-object v0, p0, Lcom/coloros/settings/wizard/ColorWizardRegionPicker;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a057d

    if-eq p1, v0, :cond_5

    const v0, 0x7f0a0581

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string p1, "CN"

    const-string v0, "persist.sys.oppo.region"

    .line 2142
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2143
    invoke-static {p0, v1}, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 2144
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2145
    invoke-static {p0}, Lcom/coloros/settings/feature/language/ColorEncodeController;->isAvailable(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    const-string v4, "oppoWizardRun"

    if-eqz v2, :cond_1

    .line 2146
    new-instance v2, Landroid/content/ComponentName;

    const-class v5, Lcom/coloros/settings/wizard/ColorWizardEncodePicker;

    invoke-direct {v2, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2147
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 2148
    :cond_1
    sget-boolean v2, Lcom/coloros/settings/a;->a:Z

    if-eqz v2, :cond_2

    const-string v2, "com.coloros.bootreg.action.region_to_bootreg"

    .line 2149
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 2150
    :cond_2
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->O(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "com.coloros.bootreg"

    .line 2151
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.coloros.bootreg.activity.DataPage"

    .line 2152
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    const-string v2, "android.settings.WIFI_SETTINGS"

    .line 2154
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.coloros.wirelesssettings"

    .line 2155
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2156
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2158
    :goto_0
    invoke-static {p0, v1}, Lcom/coloros/settings/utils/al;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 4033
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3119
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "wifi"

    .line 3120
    invoke-virtual {p0, v0}, Lcom/coloros/settings/wizard/ColorWizardRegionPicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const-string v1, "oc"

    .line 3121
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "ColorWizardRegionPicker"

    if-nez v1, :cond_4

    .line 3122
    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setCountryCode(Ljava/lang/String;)V

    .line 3123
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "setCountryCode: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/coloros/settings/utils/ak;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    const-string p1, "cn"

    .line 3125
    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setCountryCode(Ljava/lang/String;)V

    const-string p1, "setCountryCode: cn"

    .line 3126
    invoke-static {v2, p1}, Lcom/coloros/settings/utils/ak;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 111
    :cond_5
    invoke-virtual {p0}, Lcom/coloros/settings/wizard/ColorWizardRegionPicker;->finish()V

    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 60
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0032

    .line 61
    invoke-virtual {p0, p1}, Lcom/coloros/settings/wizard/ColorWizardRegionPicker;->setContentView(I)V

    const p1, 0x7f0a03b1

    .line 1069
    invoke-virtual {p0, p1}, Lcom/coloros/settings/wizard/ColorWizardRegionPicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 1070
    new-instance v0, Lcom/coloros/settings/wizard/-$$Lambda$ColorWizardRegionPicker$7jjiq9kxx37iALh7dFdP-F4umiU;

    invoke-direct {v0, p0, p1}, Lcom/coloros/settings/wizard/-$$Lambda$ColorWizardRegionPicker$7jjiq9kxx37iALh7dFdP-F4umiU;-><init>(Lcom/coloros/settings/wizard/ColorWizardRegionPicker;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const p1, 0x7f0a0742

    .line 1076
    invoke-virtual {p0, p1}, Lcom/coloros/settings/wizard/ColorWizardRegionPicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/settings/wizard/ColorWizardRegionPicker;->a:Landroid/widget/TextView;

    .line 1077
    iget-object p1, p0, Lcom/coloros/settings/wizard/ColorWizardRegionPicker;->a:Landroid/widget/TextView;

    .line 1131
    iget-object v0, p0, Lcom/coloros/settings/wizard/ColorWizardRegionPicker;->d:Landroid/graphics/Typeface;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "sans-serif-medium"

    .line 1133
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/wizard/ColorWizardRegionPicker;->d:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1135
    :catch_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/coloros/settings/wizard/ColorWizardRegionPicker;->d:Landroid/graphics/Typeface;

    .line 1138
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/wizard/ColorWizardRegionPicker;->d:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const p1, 0x7f0a057d

    .line 1080
    invoke-virtual {p0, p1}, Lcom/coloros/settings/wizard/ColorWizardRegionPicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 1081
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1083
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->O(Landroid/content/Context;)Z

    move-result p1

    const v0, 0x7f0a073c

    .line 1084
    invoke-virtual {p0, v0}, Lcom/coloros/settings/wizard/ColorWizardRegionPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/wizard/ColorWizardRegionPicker;->c:Landroid/widget/TextView;

    .line 1085
    iget-object v0, p0, Lcom/coloros/settings/wizard/ColorWizardRegionPicker;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    const v0, 0x7f0a0581

    .line 1087
    invoke-virtual {p0, v0}, Lcom/coloros/settings/wizard/ColorWizardRegionPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/wizard/ColorWizardRegionPicker;->b:Landroid/view/View;

    .line 1088
    iget-object v0, p0, Lcom/coloros/settings/wizard/ColorWizardRegionPicker;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1089
    iget-object p1, p0, Lcom/coloros/settings/wizard/ColorWizardRegionPicker;->b:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    invoke-virtual {p0}, Lcom/coloros/settings/wizard/ColorWizardRegionPicker;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x7f0a02c4

    .line 1169
    new-instance v2, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;

    invoke-direct {v2}, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;-><init>()V

    .line 1170
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const/4 v4, 0x1

    const-string v5, "oppoWizardRun"

    .line 1171
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1172
    invoke-virtual {v2, v3}, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p1, v0, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 64
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 1177
    invoke-virtual {p0}, Lcom/coloros/settings/wizard/ColorWizardRegionPicker;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    const/high16 v0, -0x80000000

    .line 1181
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 v0, -0x1

    .line 1182
    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 1183
    invoke-virtual {p1, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 1184
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1186
    invoke-virtual {p0}, Lcom/coloros/settings/wizard/ColorWizardRegionPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 1188
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1189
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/lit16 v1, v1, 0x2000

    .line 1188
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1191
    :cond_1
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1193
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/lit16 v1, v1, 0x100

    or-int/lit16 v1, v1, 0x200

    or-int/lit8 v1, v1, 0x2

    or-int/lit16 v1, v1, 0x1000

    .line 1198
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1199
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/coloros/settings/wizard/-$$Lambda$ColorWizardRegionPicker$FwHYygKWy9HBoIkqzJeuKXX148M;

    invoke-direct {v2, p1, v1}, Lcom/coloros/settings/wizard/-$$Lambda$ColorWizardRegionPicker$FwHYygKWy9HBoIkqzJeuKXX148M;-><init>(Landroid/view/Window;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 94
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 101
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/wizard/ColorWizardRegionPicker;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method
