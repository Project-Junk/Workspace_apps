.class public Lcom/oppo/camera/s;
.super Ljava/lang/Object;
.source "PrivacyPolicyAlert.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/s$a;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/content/SharedPreferences;

.field private c:Lcom/oppo/camera/s$a;

.field private d:Lcom/color/support/widget/f;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oppo/camera/s$a;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/oppo/camera/s;->a:Landroid/app/Activity;

    .line 18
    iput-object v0, p0, Lcom/oppo/camera/s;->b:Landroid/content/SharedPreferences;

    .line 19
    iput-object v0, p0, Lcom/oppo/camera/s;->c:Lcom/oppo/camera/s$a;

    .line 20
    iput-object v0, p0, Lcom/oppo/camera/s;->d:Lcom/color/support/widget/f;

    .line 27
    iput-object p1, p0, Lcom/oppo/camera/s;->a:Landroid/app/Activity;

    .line 28
    iput-object p2, p0, Lcom/oppo/camera/s;->c:Lcom/oppo/camera/s$a;

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/s;)Landroid/app/Activity;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/oppo/camera/s;->a:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic a(Lcom/oppo/camera/s;Z)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/oppo/camera/s;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPositiveButtonClick, isChecked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PrivacyPolicyAlert"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object p1, p0, Lcom/oppo/camera/s;->b:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "pref_privacy_policy_agree"

    .line 110
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_privacy_policy_key"

    .line 111
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 112
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 114
    iget-object p1, p0, Lcom/oppo/camera/s;->c:Lcom/oppo/camera/s$a;

    if-eqz p1, :cond_0

    .line 115
    invoke-interface {p1, v0}, Lcom/oppo/camera/s$a;->a(Z)V

    :cond_0
    return-void
.end method

.method private b()Lcom/color/support/widget/f;
    .locals 4

    .line 58
    new-instance v0, Lcom/color/support/widget/f$a;

    iget-object v1, p0, Lcom/oppo/camera/s;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/color/support/widget/f$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f021d

    .line 59
    invoke-virtual {v0, v1}, Lcom/color/support/widget/f$a;->a(I)Lcom/color/support/widget/f$a;

    move-result-object v1

    const/4 v2, 0x0

    .line 60
    invoke-virtual {v1, v2}, Lcom/color/support/widget/f$a;->b(Z)Lcom/color/support/widget/f$a;

    move-result-object v1

    const v2, 0x7f0f0219

    .line 61
    invoke-virtual {v1, v2}, Lcom/color/support/widget/f$a;->b(I)Lcom/color/support/widget/f$a;

    move-result-object v1

    const/4 v2, 0x1

    .line 62
    invoke-virtual {v1, v2}, Lcom/color/support/widget/f$a;->a(Z)Lcom/color/support/widget/f$a;

    move-result-object v1

    const v3, 0x7f0f021a

    .line 63
    invoke-virtual {v1, v3}, Lcom/color/support/widget/f$a;->c(I)Lcom/color/support/widget/f$a;

    move-result-object v1

    const v3, 0x7f0f0217

    .line 64
    invoke-virtual {v1, v3}, Lcom/color/support/widget/f$a;->d(I)Lcom/color/support/widget/f$a;

    move-result-object v1

    new-instance v3, Lcom/oppo/camera/s$2;

    invoke-direct {v3, p0}, Lcom/oppo/camera/s$2;-><init>(Lcom/oppo/camera/s;)V

    .line 65
    invoke-virtual {v1, v3}, Lcom/color/support/widget/f$a;->a(Lcom/color/support/widget/f$c;)Lcom/color/support/widget/f$a;

    move-result-object v1

    new-instance v3, Lcom/oppo/camera/s$1;

    invoke-direct {v3, p0}, Lcom/oppo/camera/s$1;-><init>(Lcom/oppo/camera/s;)V

    .line 79
    invoke-virtual {v1, v3}, Lcom/color/support/widget/f$a;->a(Lcom/color/support/widget/f$b;)Lcom/color/support/widget/f$a;

    move-result-object v1

    .line 85
    invoke-virtual {v1, v2}, Lcom/color/support/widget/f$a;->c(Z)Lcom/color/support/widget/f$a;

    .line 87
    invoke-virtual {v0}, Lcom/color/support/widget/f$a;->b()Lcom/color/support/widget/f;

    move-result-object v1

    .line 88
    invoke-virtual {v0}, Lcom/color/support/widget/f$a;->a()Landroid/app/Dialog;

    move-result-object v0

    new-instance v2, Lcom/oppo/camera/s$3;

    invoke-direct {v2, p0}, Lcom/oppo/camera/s$3;-><init>(Lcom/oppo/camera/s;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-object v1
.end method

.method static synthetic b(Lcom/oppo/camera/s;Z)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/oppo/camera/s;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 3

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNegativeButtonClick, isChecked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrivacyPolicyAlert"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/oppo/camera/s;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "pref_privacy_policy_agree"

    .line 123
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "pref_privacy_policy_key"

    .line 124
    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 125
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 127
    iget-object p1, p0, Lcom/oppo/camera/s;->c:Lcom/oppo/camera/s$a;

    if-eqz p1, :cond_0

    .line 128
    invoke-interface {p1, v1}, Lcom/oppo/camera/s$a;->a(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "PrivacyPolicyAlert"

    const-string v1, "release"

    .line 133
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/oppo/camera/s;->d:Lcom/color/support/widget/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/color/support/widget/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/oppo/camera/s;->d:Lcom/color/support/widget/f;

    invoke-virtual {v0}, Lcom/color/support/widget/f;->c()V

    :cond_0
    const/4 v0, 0x0

    .line 139
    iput-object v0, p0, Lcom/oppo/camera/s;->d:Lcom/color/support/widget/f;

    .line 140
    iput-object v0, p0, Lcom/oppo/camera/s;->c:Lcom/oppo/camera/s$a;

    return-void
.end method

.method public a(Landroid/content/SharedPreferences;)Z
    .locals 3

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showDialog, preferences: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrivacyPolicyAlert"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lcom/oppo/camera/s;->b:Landroid/content/SharedPreferences;

    .line 36
    invoke-static {}, Lcom/oppo/camera/o/d;->y()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/oppo/camera/s;->b:Landroid/content/SharedPreferences;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "pref_privacy_policy_key"

    .line 40
    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "showDialog, has show dialog"

    .line 41
    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 46
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/s;->d:Lcom/color/support/widget/f;

    if-nez p1, :cond_2

    .line 47
    invoke-direct {p0}, Lcom/oppo/camera/s;->b()Lcom/color/support/widget/f;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/s;->d:Lcom/color/support/widget/f;

    .line 50
    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/s;->d:Lcom/color/support/widget/f;

    invoke-virtual {p1}, Lcom/color/support/widget/f;->a()Z

    move-result p1

    if-nez p1, :cond_3

    .line 51
    iget-object p1, p0, Lcom/oppo/camera/s;->d:Lcom/color/support/widget/f;

    invoke-virtual {p1}, Lcom/color/support/widget/f;->b()V

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_0
    return v0
.end method
