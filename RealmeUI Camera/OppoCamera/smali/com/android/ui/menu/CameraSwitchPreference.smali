.class public Lcom/android/ui/menu/CameraSwitchPreference;
.super Lcom/color/support/preference/ColorSwitchPreference;
.source "CameraSwitchPreference.java"

# interfaces
.implements Landroidx/preference/Preference$b;


# static fields
.field private static final b:Ljava/lang/String; = "on"

.field private static final c:Ljava/lang/String; = "off"


# instance fields
.field private d:Landroid/content/Context;

.field private e:Landroidx/preference/Preference;

.field private final f:Landroid/content/DialogInterface$OnClickListener;

.field private final g:Landroid/content/DialogInterface$OnClickListener;

.field private final h:Landroid/content/DialogInterface$OnClickListener;

.field private final i:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 73
    invoke-direct {p0, p1}, Lcom/color/support/preference/ColorSwitchPreference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/android/ui/menu/CameraSwitchPreference;->d:Landroid/content/Context;

    .line 42
    iput-object v0, p0, Lcom/android/ui/menu/CameraSwitchPreference;->e:Landroidx/preference/Preference;

    .line 44
    new-instance v0, Lcom/android/ui/menu/CameraSwitchPreference$1;

    invoke-direct {v0, p0}, Lcom/android/ui/menu/CameraSwitchPreference$1;-><init>(Lcom/android/ui/menu/CameraSwitchPreference;)V

    iput-object v0, p0, Lcom/android/ui/menu/CameraSwitchPreference;->f:Landroid/content/DialogInterface$OnClickListener;

    .line 55
    new-instance v0, Lcom/android/ui/menu/CameraSwitchPreference$2;

    invoke-direct {v0, p0}, Lcom/android/ui/menu/CameraSwitchPreference$2;-><init>(Lcom/android/ui/menu/CameraSwitchPreference;)V

    iput-object v0, p0, Lcom/android/ui/menu/CameraSwitchPreference;->g:Landroid/content/DialogInterface$OnClickListener;

    .line 154
    new-instance v0, Lcom/android/ui/menu/CameraSwitchPreference$3;

    invoke-direct {v0, p0}, Lcom/android/ui/menu/CameraSwitchPreference$3;-><init>(Lcom/android/ui/menu/CameraSwitchPreference;)V

    iput-object v0, p0, Lcom/android/ui/menu/CameraSwitchPreference;->h:Landroid/content/DialogInterface$OnClickListener;

    .line 177
    new-instance v0, Lcom/android/ui/menu/CameraSwitchPreference$4;

    invoke-direct {v0, p0}, Lcom/android/ui/menu/CameraSwitchPreference$4;-><init>(Lcom/android/ui/menu/CameraSwitchPreference;)V

    iput-object v0, p0, Lcom/android/ui/menu/CameraSwitchPreference;->i:Landroid/content/DialogInterface$OnClickListener;

    .line 74
    iput-object p1, p0, Lcom/android/ui/menu/CameraSwitchPreference;->d:Landroid/content/Context;

    .line 75
    invoke-virtual {p0, p0}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Landroidx/preference/Preference$b;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/color/support/preference/ColorSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 41
    iput-object p2, p0, Lcom/android/ui/menu/CameraSwitchPreference;->d:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/android/ui/menu/CameraSwitchPreference;->e:Landroidx/preference/Preference;

    .line 44
    new-instance p2, Lcom/android/ui/menu/CameraSwitchPreference$1;

    invoke-direct {p2, p0}, Lcom/android/ui/menu/CameraSwitchPreference$1;-><init>(Lcom/android/ui/menu/CameraSwitchPreference;)V

    iput-object p2, p0, Lcom/android/ui/menu/CameraSwitchPreference;->f:Landroid/content/DialogInterface$OnClickListener;

    .line 55
    new-instance p2, Lcom/android/ui/menu/CameraSwitchPreference$2;

    invoke-direct {p2, p0}, Lcom/android/ui/menu/CameraSwitchPreference$2;-><init>(Lcom/android/ui/menu/CameraSwitchPreference;)V

    iput-object p2, p0, Lcom/android/ui/menu/CameraSwitchPreference;->g:Landroid/content/DialogInterface$OnClickListener;

    .line 154
    new-instance p2, Lcom/android/ui/menu/CameraSwitchPreference$3;

    invoke-direct {p2, p0}, Lcom/android/ui/menu/CameraSwitchPreference$3;-><init>(Lcom/android/ui/menu/CameraSwitchPreference;)V

    iput-object p2, p0, Lcom/android/ui/menu/CameraSwitchPreference;->h:Landroid/content/DialogInterface$OnClickListener;

    .line 177
    new-instance p2, Lcom/android/ui/menu/CameraSwitchPreference$4;

    invoke-direct {p2, p0}, Lcom/android/ui/menu/CameraSwitchPreference$4;-><init>(Lcom/android/ui/menu/CameraSwitchPreference;)V

    iput-object p2, p0, Lcom/android/ui/menu/CameraSwitchPreference;->i:Landroid/content/DialogInterface$OnClickListener;

    .line 80
    iput-object p1, p0, Lcom/android/ui/menu/CameraSwitchPreference;->d:Landroid/content/Context;

    .line 81
    invoke-virtual {p0, p0}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Landroidx/preference/Preference$b;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/color/support/preference/ColorSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 41
    iput-object p2, p0, Lcom/android/ui/menu/CameraSwitchPreference;->d:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/android/ui/menu/CameraSwitchPreference;->e:Landroidx/preference/Preference;

    .line 44
    new-instance p2, Lcom/android/ui/menu/CameraSwitchPreference$1;

    invoke-direct {p2, p0}, Lcom/android/ui/menu/CameraSwitchPreference$1;-><init>(Lcom/android/ui/menu/CameraSwitchPreference;)V

    iput-object p2, p0, Lcom/android/ui/menu/CameraSwitchPreference;->f:Landroid/content/DialogInterface$OnClickListener;

    .line 55
    new-instance p2, Lcom/android/ui/menu/CameraSwitchPreference$2;

    invoke-direct {p2, p0}, Lcom/android/ui/menu/CameraSwitchPreference$2;-><init>(Lcom/android/ui/menu/CameraSwitchPreference;)V

    iput-object p2, p0, Lcom/android/ui/menu/CameraSwitchPreference;->g:Landroid/content/DialogInterface$OnClickListener;

    .line 154
    new-instance p2, Lcom/android/ui/menu/CameraSwitchPreference$3;

    invoke-direct {p2, p0}, Lcom/android/ui/menu/CameraSwitchPreference$3;-><init>(Lcom/android/ui/menu/CameraSwitchPreference;)V

    iput-object p2, p0, Lcom/android/ui/menu/CameraSwitchPreference;->h:Landroid/content/DialogInterface$OnClickListener;

    .line 177
    new-instance p2, Lcom/android/ui/menu/CameraSwitchPreference$4;

    invoke-direct {p2, p0}, Lcom/android/ui/menu/CameraSwitchPreference$4;-><init>(Lcom/android/ui/menu/CameraSwitchPreference;)V

    iput-object p2, p0, Lcom/android/ui/menu/CameraSwitchPreference;->i:Landroid/content/DialogInterface$OnClickListener;

    .line 86
    iput-object p1, p0, Lcom/android/ui/menu/CameraSwitchPreference;->d:Landroid/content/Context;

    .line 87
    invoke-virtual {p0, p0}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Landroidx/preference/Preference$b;)V

    return-void
.end method

.method static synthetic a(Lcom/android/ui/menu/CameraSwitchPreference;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/ui/menu/CameraSwitchPreference;->d:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/android/ui/menu/CameraSwitchPreference;)Landroidx/preference/Preference;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/ui/menu/CameraSwitchPreference;->e:Landroidx/preference/Preference;

    return-object p0
.end method

.method static synthetic c(Lcom/android/ui/menu/CameraSwitchPreference;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/ui/menu/CameraSwitchPreference;->e()V

    return-void
.end method

.method private d()V
    .locals 3

    .line 110
    new-instance v0, Lcolor/support/v7/app/b$a;

    iget-object v1, p0, Lcom/android/ui/menu/CameraSwitchPreference;->d:Landroid/content/Context;

    const v2, 0x7f1000e5

    invoke-direct {v0, v1, v2}, Lcolor/support/v7/app/b$a;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0f017f

    .line 111
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/b$a;->a(I)Lcolor/support/v7/app/b$a;

    const v1, 0x7f0f017b

    .line 112
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/b$a;->b(I)Lcolor/support/v7/app/b$a;

    .line 113
    iget-object v1, p0, Lcom/android/ui/menu/CameraSwitchPreference;->h:Landroid/content/DialogInterface$OnClickListener;

    const v2, 0x7f0f0178

    invoke-virtual {v0, v2, v1}, Lcolor/support/v7/app/b$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/b$a;

    .line 114
    iget-object v1, p0, Lcom/android/ui/menu/CameraSwitchPreference;->i:Landroid/content/DialogInterface$OnClickListener;

    const v2, 0x7f0f0177

    invoke-virtual {v0, v2, v1}, Lcolor/support/v7/app/b$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/b$a;

    .line 115
    invoke-virtual {v0}, Lcolor/support/v7/app/b$a;->c()Lcolor/support/v7/app/b;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lcolor/support/v7/app/b;->show()V

    return-void
.end method

.method private e()V
    .locals 4

    .line 162
    iget-object v0, p0, Lcom/android/ui/menu/CameraSwitchPreference;->e:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    const-string v0, "CameraSwitchPreference"

    const-string v1, "Exception: null == mPreference"

    .line 163
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 168
    :cond_0
    monitor-enter v0

    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/android/ui/menu/CameraSwitchPreference;->e:Landroidx/preference/Preference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->K()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 170
    iget-object v2, p0, Lcom/android/ui/menu/CameraSwitchPreference;->e:Landroidx/preference/Preference;

    invoke-virtual {v2}, Landroidx/preference/Preference;->B()Ljava/lang/String;

    move-result-object v2

    const-string v3, "off"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 171
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v1, 0x0

    .line 173
    invoke-virtual {p0, v1}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    .line 174
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method protected c(Z)Z
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persistBoolean, key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/ui/menu/CameraSwitchPreference;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraSwitchPreference"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 93
    sget-object p1, Lcom/android/ui/menu/CameraSwitchPreference;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/ui/menu/CameraSwitchPreference;->c:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/ui/menu/CameraSwitchPreference;->d(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected d(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 98
    sget-object p1, Lcom/android/ui/menu/CameraSwitchPreference;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/ui/menu/CameraSwitchPreference;->c:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "on"

    .line 99
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    .line 121
    invoke-virtual {p1}, Landroidx/preference/Preference;->B()Ljava/lang/String;

    move-result-object p2

    const-string v0, "pref_camera_recordlocation_key"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const v0, 0x7f0f00ee

    const v1, 0x7f0f00f1

    const v2, 0x7f0f00ef

    const v3, 0x7f1000e5

    const-string v4, "off"

    if-eqz p2, :cond_0

    .line 122
    invoke-virtual {p1}, Landroidx/preference/Preference;->K()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/preference/Preference;->B()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/ui/menu/CameraSwitchPreference;->d:Landroid/content/Context;

    .line 123
    invoke-static {p2}, Lcom/oppo/camera/o/d;->i(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 124
    iput-object p1, p0, Lcom/android/ui/menu/CameraSwitchPreference;->e:Landroidx/preference/Preference;

    .line 126
    new-instance p2, Lcolor/support/v7/app/b$a;

    iget-object v5, p0, Lcom/android/ui/menu/CameraSwitchPreference;->d:Landroid/content/Context;

    invoke-direct {p2, v5, v3}, Lcolor/support/v7/app/b$a;-><init>(Landroid/content/Context;I)V

    .line 127
    invoke-virtual {p2, v2}, Lcolor/support/v7/app/b$a;->a(I)Lcolor/support/v7/app/b$a;

    .line 128
    iget-object v5, p0, Lcom/android/ui/menu/CameraSwitchPreference;->f:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p2, v1, v5}, Lcolor/support/v7/app/b$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/b$a;

    .line 129
    iget-object v5, p0, Lcom/android/ui/menu/CameraSwitchPreference;->g:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p2, v0, v5}, Lcolor/support/v7/app/b$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/b$a;

    .line 130
    invoke-virtual {p2}, Lcolor/support/v7/app/b$a;->c()Lcolor/support/v7/app/b;

    move-result-object p2

    invoke-virtual {p2}, Lcolor/support/v7/app/b;->show()V

    .line 133
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->B()Ljava/lang/String;

    move-result-object p2

    const-string v5, "pref_slogan_location_key"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 134
    invoke-virtual {p1}, Landroidx/preference/Preference;->K()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/preference/Preference;->B()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/ui/menu/CameraSwitchPreference;->d:Landroid/content/Context;

    .line 135
    invoke-static {p2}, Lcom/oppo/camera/o/d;->i(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 136
    iput-object p1, p0, Lcom/android/ui/menu/CameraSwitchPreference;->e:Landroidx/preference/Preference;

    .line 138
    new-instance p2, Lcolor/support/v7/app/b$a;

    iget-object v5, p0, Lcom/android/ui/menu/CameraSwitchPreference;->d:Landroid/content/Context;

    invoke-direct {p2, v5, v3}, Lcolor/support/v7/app/b$a;-><init>(Landroid/content/Context;I)V

    .line 139
    invoke-virtual {p2, v2}, Lcolor/support/v7/app/b$a;->a(I)Lcolor/support/v7/app/b$a;

    .line 140
    iget-object v2, p0, Lcom/android/ui/menu/CameraSwitchPreference;->f:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p2, v1, v2}, Lcolor/support/v7/app/b$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/b$a;

    .line 141
    iget-object v1, p0, Lcom/android/ui/menu/CameraSwitchPreference;->g:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p2, v0, v1}, Lcolor/support/v7/app/b$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/b$a;

    .line 142
    invoke-virtual {p2}, Lcolor/support/v7/app/b$a;->c()Lcolor/support/v7/app/b;

    move-result-object p2

    invoke-virtual {p2}, Lcolor/support/v7/app/b;->show()V

    .line 145
    :cond_1
    invoke-virtual {p1}, Landroidx/preference/Preference;->B()Ljava/lang/String;

    move-result-object p2

    const-string v0, "pref_camera_storage_key"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 146
    invoke-virtual {p1}, Landroidx/preference/Preference;->K()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/preference/Preference;->B()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 147
    iput-object p1, p0, Lcom/android/ui/menu/CameraSwitchPreference;->e:Landroidx/preference/Preference;

    .line 148
    invoke-direct {p0}, Lcom/android/ui/menu/CameraSwitchPreference;->d()V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
