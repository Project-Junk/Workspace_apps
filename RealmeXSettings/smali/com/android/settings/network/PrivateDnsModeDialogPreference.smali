.class public Lcom/android/settings/network/PrivateDnsModeDialogPreference;
.super Lcom/coloros/settingslib/CustomDialogPreferenceCompat;
.source "PrivateDnsModeDialogPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# static fields
.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Landroid/widget/EditText;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field b:Landroid/widget/RadioGroup;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field c:Ljava/lang/String;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final e:Lcom/android/settings/utils/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 75
    sput-object v0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->d:Ljava/util/Map;

    const v1, 0x7f0a050f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "off"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->d:Ljava/util/Map;

    const v1, 0x7f0a0510

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "opportunistic"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->d:Ljava/util/Map;

    const v1, 0x7f0a0511

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "hostname"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 105
    invoke-direct {p0, p1}, Lcom/coloros/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;)V

    .line 125
    new-instance p1, Lcom/android/settings/utils/a$a;

    sget-object v0, Lcom/android/settings/network/-$$Lambda$PrivateDnsModeDialogPreference$OguER7cKf8jnREjjWjP1ki16ko4;->INSTANCE:Lcom/android/settings/network/-$$Lambda$PrivateDnsModeDialogPreference$OguER7cKf8jnREjjWjP1ki16ko4;

    const-string/jumbo v1, "url"

    invoke-direct {p1, v1, v0}, Lcom/android/settings/utils/a$a;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object p1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->e:Lcom/android/settings/utils/a$a;

    const p1, 0x7f0d02a2

    .line 1143
    invoke-virtual {p0, p1}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/coloros/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 125
    new-instance p1, Lcom/android/settings/utils/a$a;

    sget-object p2, Lcom/android/settings/network/-$$Lambda$PrivateDnsModeDialogPreference$OguER7cKf8jnREjjWjP1ki16ko4;->INSTANCE:Lcom/android/settings/network/-$$Lambda$PrivateDnsModeDialogPreference$OguER7cKf8jnREjjWjP1ki16ko4;

    const-string/jumbo v0, "url"

    invoke-direct {p1, v0, p2}, Lcom/android/settings/utils/a$a;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object p1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->e:Lcom/android/settings/utils/a$a;

    const p1, 0x7f0d02a2

    .line 2143
    invoke-virtual {p0, p1}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 115
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 125
    new-instance p1, Lcom/android/settings/utils/a$a;

    sget-object p2, Lcom/android/settings/network/-$$Lambda$PrivateDnsModeDialogPreference$OguER7cKf8jnREjjWjP1ki16ko4;->INSTANCE:Lcom/android/settings/network/-$$Lambda$PrivateDnsModeDialogPreference$OguER7cKf8jnREjjWjP1ki16ko4;

    const-string/jumbo p3, "url"

    invoke-direct {p1, p3, p2}, Lcom/android/settings/utils/a$a;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object p1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->e:Lcom/android/settings/utils/a$a;

    const p1, 0x7f0d02a2

    .line 3143
    invoke-virtual {p0, p1}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 121
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coloros/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 125
    new-instance p1, Lcom/android/settings/utils/a$a;

    sget-object p2, Lcom/android/settings/network/-$$Lambda$PrivateDnsModeDialogPreference$OguER7cKf8jnREjjWjP1ki16ko4;->INSTANCE:Lcom/android/settings/network/-$$Lambda$PrivateDnsModeDialogPreference$OguER7cKf8jnREjjWjP1ki16ko4;

    const-string/jumbo p3, "url"

    invoke-direct {p1, p3, p2}, Lcom/android/settings/utils/a$a;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object p1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->e:Lcom/android/settings/utils/a$a;

    const p1, 0x7f0d02a2

    .line 4143
    invoke-virtual {p0, p1}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method private a()Lcom/android/settingslib/g$a;
    .locals 3

    .line 252
    invoke-virtual {p0}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "disallow_config_private_dns"

    .line 251
    invoke-static {v0, v2, v1}, Lcom/android/settingslib/h;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 2

    const-string v0, "private_dns_mode"

    .line 86
    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    sget-object v1, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "private_dns_default_mode"

    .line 88
    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    :cond_0
    sget-object p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->d:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    :cond_1
    const-string p0, "opportunistic"

    return-object p0
.end method

.method public static b(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1

    const-string v0, "private_dns_specifier"

    .line 94
    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic b(Landroid/view/View;)V
    .locals 3

    .line 127
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120a91

    .line 129
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 133
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 135
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Activity was not found for intent, "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PrivateDnsModeDialog"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private b()Z
    .locals 1

    .line 256
    invoke-direct {p0}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->a()Lcom/android/settingslib/g$a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private d()Landroid/widget/Button;
    .locals 2

    .line 260
    invoke-virtual {p0}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->c()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lcolor/support/v7/app/AlertDialog;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, -0x1

    .line 264
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->c:Ljava/lang/String;

    const-string v1, "hostname"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 269
    iget-object v1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->a:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 270
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 272
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->d()Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->a:Landroid/widget/EditText;

    .line 275
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkUtils;->isWeaklyValidatedHostname(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 274
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public static synthetic lambda$OguER7cKf8jnREjjWjP1ki16ko4(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->b(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 5

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 169
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->a(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->c:Ljava/lang/String;

    const v2, 0x7f0a0512

    .line 171
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->a:Landroid/widget/EditText;

    .line 172
    iget-object v2, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->a:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 173
    iget-object v2, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->a:Landroid/widget/EditText;

    const-string v3, "private_dns_specifier"

    .line 5094
    invoke-static {v1, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a0513

    .line 175
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->b:Landroid/widget/RadioGroup;

    .line 176
    iget-object v1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->b:Landroid/widget/RadioGroup;

    invoke-virtual {v1, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 177
    iget-object v1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->b:Landroid/widget/RadioGroup;

    sget-object v2, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->d:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->c:Ljava/lang/String;

    const v4, 0x7f0a0510

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    const v1, 0x7f0a050e

    .line 179
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 180
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v1, 0x7f120a91

    .line 182
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 183
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 181
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 184
    new-instance v2, Lcom/android/settings/utils/a$a;

    const-string/jumbo v3, "url"

    invoke-direct {v2, v0, v3, v1}, Lcom/android/settings/utils/a$a;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 5116
    iget-object v1, v2, Lcom/android/settings/utils/a$a;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f121116

    .line 188
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/settings/utils/a$a;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 187
    invoke-static {v0, v1}, Lcom/android/settings/utils/a;->a(Ljava/lang/CharSequence;[Lcom/android/settings/utils/a$a;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 234
    invoke-direct {p0}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->e()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 148
    invoke-super {p0, p1}, Lcom/coloros/settingslib/CustomDialogPreferenceCompat;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 149
    invoke-direct {p0}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    const v0, 0x7f0a056b

    .line 156
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 160
    invoke-direct {p0}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "hostname"

    .line 218
    iput-object p1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->c:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    const-string p1, "opportunistic"

    .line 215
    iput-object p1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->c:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    const-string p1, "off"

    .line 212
    iput-object p1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->c:Ljava/lang/String;

    .line 221
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->e()V

    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a050f
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 196
    iget-object p2, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->c:Ljava/lang/String;

    const-string v0, "hostname"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 198
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->a:Landroid/widget/EditText;

    .line 199
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "private_dns_specifier"

    .line 198
    invoke-static {p2, v1, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 202
    :cond_0
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object p2

    const/16 v0, 0x4e1

    iget-object v1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->c:Ljava/lang/String;

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->c:Ljava/lang/String;

    const-string v0, "private_dns_mode"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public performClick()V
    .locals 2

    .line 239
    invoke-direct {p0}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->a()Lcom/android/settingslib/g$a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 243
    invoke-super {p0}, Lcom/coloros/settingslib/CustomDialogPreferenceCompat;->performClick()V

    return-void

    .line 246
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settingslib/g;->a(Landroid/content/Context;Lcom/android/settingslib/g$a;)V

    return-void
.end method
